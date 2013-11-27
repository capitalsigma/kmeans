(* we use this sig for information hiding, "execute" is all the outside *)
(* world needs to know about *)
signature NORMAL = sig
    val execute : Point.t list * int * real * Random.rand * bool -> Point.t list

	(* need to add in other functions for unit tests *)
    (* val accumulate : int * Point.t * Point.t list * bool -> Point.t list *)
    val work : Point.t list * int * ClusterCenter.t vector -> ClusterCenter.t vector
	val initializeClusterCenters : 
		Point.t list * int * Random.rand * bool -> ClusterCenter.t vector
end

structure Normal :> NORMAL = struct

(* string -> int -> string -> string list -> string *)
(* ie printf("%s %i %s") + a for loop + printf("%s") *)
val genericDebugFmt  =
	StringPrintf.format 
		(StringPrintf.STR o 
		 StringPrintf.INT o 
		 StringPrintf.STR o 
		 (StringPrintf.LIST StringPrintf.STR))


(* helper function for work(), as in the Java *)
(* fun accumulate (index, pointAdded, newClusterCenterCenters, debug) =  *)
(*     let *)
(* 		(* debugging function *) *)
(* 		(* fun printIterationInfo () = *) *)
(* 		(* 	print(genericDebugFmt *) *)
(* 		(* 			  "\nIndex of nearest cluster center: " *) *)
(* 		(* 			  index *) *)
(* 		(* 			  (String.concat ["\npoint to add: ", (Point.featuresRepr pointAdded), *) *)
(* 		(* 							  "\ncurrent cluster centers: "]) *) *)
(* 		(* 			  (map Point.featuresSizeRepr newClusterCenterCenters)) *) *)
(* 		(* val _ = if debug then *) *)
(* 		(* 			printIterationInfo ()  *) *)
(* 		(* 		else *) *)
(* 		(* 			() *) *)
(* 		(* i think this fixes my previous problem of accidentally *) *)
(* 		(* accumulating everything in the same list *) *)
(* 		val toUpdate = List.nth(newClusterCenterCenters, index) *)
(*     in *)
(* 		List.concat[List.take(newClusterCenterCenters, index), *)
(* 					[Point.incSize (Point.add (pointAdded, toUpdate))], *)
(* 					List.drop(newClusterCenterCenters, index + 1)] *)
(*     end *)

(* find new cluster centers *)
(* we:  *)
(*    1. find the cluster center nearest to each point, get its index *)
(*    2. create a new point under the same index whose featuers are the sum  *)
(*         of all of the nearest features *)
(*    3. increment a counter to of the number of points that have been summed *)
(*         to create the features of the new point *)
(*    4. divide all of the features of the new point by this counter *)
(*    5. return the new list of cluster centers *)
(* fun work (points, oldClusterCenterCenters, debug) =  *)
(*     let	 *)
(* 		fun loop (p::ps, newClusterCenterCenters) = *)
(* 			loop (ps,  *)
(* 				  accumulate(CommonUtil.findNearestPoint(p, oldClusterCenterCenters), *)
(* 							 p, *)
(* 							 newClusterCenterCenters,  *)
(* 							 debug)) *)
(* 		  | loop ([], newClusterCenterCenters) = newClusterCenterCenters *)
(* 		val numFeatures = Point.getNumFeatures(hd oldClusterCenterCenters) *)
(* 		val centersForAcc = map (fn x => Point.Point numFeatures) oldClusterCenterCenters *)
(*     in *)
(* 		(* in the Java, this is handled by Normal.execute *) *)
(* 		(* it fits more naturally here *) *)
(* 		map Point.resetSize (loop (points, centersForAcc)) *)
(*     end *)

(* we: *)
fun work (points, nClusterCenters, oldClusterCenters : ClusterCenter.t vector) = 
	let
		val newClusterCenter = 
			ClusterCenter.ClusterCenter (Point.getNumFeatures (hd points))
		(* val oldCenterPoints =  *)
		(* 	Vector.map ClusterCenter.getPoint oldClusterCenters *)
		val vecForAccum = Vector.tabulate (nClusterCenters, 
										   (fn x => newClusterCenter))
		fun nearestOldCenter (p) = 
			CommonUtil.findNearestPoint (p, oldClusterCenters)
		fun addToCenter (centers, index, point) =
			ClusterCenter.add (point, (Vector.sub (centers, index)))
		fun accumulate (point, clusterCenters) = 
			let
				val index = nearestOldCenter point
			in
				Vector.update (clusterCenters, 
							   index, 
							   addToCenter (clusterCenters, index, point))
			end
	in
		Vector.map ClusterCenter.resetSize (List.foldl accumulate vecForAccum points)
	end

(* here, the Java generates a random number and ignores it with the comment *)
(* "//to test the correctness" --> line 139 *)
(* the Java lets the random value = nClusterCenters - index - 1 *)
(* converting this to use vectors of clusters *)
(* TOOD: this currently takes O(len(points) * nClusterCenters) time *)
fun initializeClusterCenters (points, 
							  nClusterCenters, 
							  randomPtr, 
							  debug) : ClusterCenter.t vector =
    let
		val nPoints = length(points)
		fun setCenter index = 
			(* following the "testing for correctness" in github version of *)
			(* the Java *)
			List.nth (points, (if debug then
								   (index - 1) 
							   else
								   (Random.randInt (randomPtr) mod nPoints)))
		
    in
		Vector.tabulate (nPoints, fn i => (ClusterCenter.fromPoint (setCenter i)))
    end
		

fun vectorToList vec = 
	List.tabulate (Vector.length vec, fn i => Vector.sub(vec, i))

(* github.com/daveboutcher/stamp-mp/blob/master/kmeans/normal.c *)
(* github.com/dpj/DPJ/blob/master/Benchmarks/Applications/KMeans/dpj/Normal.java *)
(* NB, the Java has changed from the C: *)
(*    the C terminates on either the change from successive runs being *)
(*    less than the specfied thresh hold or 500 iterations *)
(*    the Java is hardcoded to run for 10 iterations and then stop *)
(* we're going with the Java for consistency *)
fun execute (points : Point.t list,
			 nClusterCenters : int,
			 threshold : real,
			 randomPtr : Random.rand,
			 debug : bool) =
    let
		val initialClusterCenters = 
			initializeClusterCenters(points, nClusterCenters, randomPtr, debug)

		(* helper function for debugging *)
		(* fun printIterationInfo (index, points) = *)
		(* 	print(genericDebugFmt "\nLoop iteration index: "  *)
		(* 						  index  *)
		(* 						  "\npoints: "  *)
		(* 						  (map Point.featuresRepr points))					 *)
		(* val _ = if debug then *)
		(* 			printIterationInfo (~1, initialClusterCenters) *)
		(* 		else () *)

		fun loop (10, clusterCenters) = 
			clusterCenters
		  | loop (index, clusterCenters) = 
			loop(index + 1, work(points, nClusterCenters, clusterCenters))
    in
		vectorToList (Vector.map 
						  ClusterCenter.getPoint 
						  (loop (0, initialClusterCenters)))
    end


end 
								 
