(* we use this sig for information hiding, "execute" is all the outside *)
(* world needs to know about *)
signature NORMAL = sig
    val execute : Point.t list * int * real * Random.rand * bool -> Point.t list

	(* need to add in other functions for unit tests *)
    (* val accumulate : int * Point.t * Point.t list * bool -> Point.t list *)
    val work : Point.t list * ClusterCenter.t vector -> ClusterCenter.t vector
	val initializeClusterCenters : 
		Point.t list * Random.rand * bool -> ClusterCenter.t vector
	val vectorToList : 'a vector -> 'a list
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


(* this takes in a list of points and a vector of clusters and does one *)
(* iteration of the algorithm -- ie it recalculates where the newest *)
(* cluster centers should be and returns a vector of them *)

(* for each point in the list, it: *)
(*    1) finds the nearest cluster center *)
(*    2) adds the point to a vector of "blank" cluster centers at the index *)
(* that it found in (1) *)
(* then it resetSize's the new, blank cluster centers *)
fun work (points : Point.t list, oldClusterCenters : ClusterCenter.t vector) = 
	let
		val newClusterCenter = 
			ClusterCenter.ClusterCenter (Point.getNumFeatures (hd points))
		val vecForAccum = Vector.tabulate ((Vector.length oldClusterCenters), 
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
							  (* nClusterCenters,  *)
							  randomPtr, 
							  debug) : ClusterCenter.t vector =
    let
		val nPoints = length points
		fun setCenter index = 
			(* following the "testing for correctness" in github version of *)
			(* the Java *)
			List.nth (points, 
					  (if debug then index else
					   ((Random.randInt (randomPtr) mod nPoints) - 1)))
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
			initializeClusterCenters(points, randomPtr, debug)

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
			loop(index + 1, work(points, clusterCenters))
    in
		vectorToList (Vector.map 
						  ClusterCenter.getPoint 
						  (loop (0, initialClusterCenters)))
    end


end 
								 
