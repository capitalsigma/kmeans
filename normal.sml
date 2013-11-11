(* we use this sig for information hiding, "execute" is all the outside *)
(* world needs to know about *)
signature NORMAL = sig
    val execute : Point.t list * int * real * Random.rand * bool -> Point.t list

	(* need to add in other functions for unit tests *)
    val accumulate : int * Point.t * Point.t list * bool -> Point.t list
    val work : Point.t list * Point.t list * bool -> Point.t list
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
fun accumulate (index, pointAdded, newClusterCenters, debug) = 
    let
		(* debugging function *)
		fun printIterationInfo () =
			print(genericDebugFmt
					  "\nIndex of nearest cluster center: "
					  index
					  (String.concat ["\npoint to add: ", (Point.featuresRepr pointAdded),
									  "\ncurrent cluster centers: "])
					  (map Point.featuresSizeRepr newClusterCenters))
		val _ = if debug then
					printIterationInfo () 
				else
					()
		(* i think this fixes my previous problem of accidentally *)
		(* accumulating everything in the same list *)
		val toUpdate = List.nth(newClusterCenters, index)
    in
		List.concat[List.take(newClusterCenters, index),
					[Point.incSize (Point.add (pointAdded, toUpdate))],
					List.drop(newClusterCenters, index + 1)]
    end

(* find new cluster centers *)
(* we:  *)
(*    1. find the cluster center nearest to each point, get its index *)
(*    2. create a new point under the same index whose featuers are the sum  *)
(*         of all of the nearest features *)
(*    3. increment a counter to of the number of points that have been summed *)
(*         to create the features of the new point *)
(*    4. divide all of the features of the new point by this counter *)
(*    5. return the new list of cluster centers *)
fun work (points, oldClusterCenters, debug) = 
    let	
		fun loop (p::ps, newClusterCenters) =
			loop (ps, 
				  accumulate(CommonUtil.findNearestPoint(p, oldClusterCenters),
							 p,
							 newClusterCenters, 
							 debug))
		  | loop ([], newClusterCenters) = newClusterCenters
		val numFeatures = Point.getNumFeatures(hd oldClusterCenters)
		val centersForAcc = map (fn x => Point.Point numFeatures) oldClusterCenters
    in
		(* in the Java, this is handled by Normal.execute *)
		(* it fits more naturally here *)
		map Point.resetSize (loop (points, centersForAcc))
    end

(* here, the Java generates a random number and ignores it with the comment *)
(* "//to test the correctness" --> line 139 *)
(* the Java lets the random value = nClusters - index - 1 *)
fun initializeClusters (points, nClusters, randomPtr, debug) =
    let
		val nPoints = length(points)
		fun setCenter index = 
			(* following the "testing for correctness" in github version of *)
			(* the Java *)
			if debug then
				(index - 1) 
			else
				(Random.randInt (randomPtr) mod nPoints)
		fun newCluster (0, acc) = List.rev acc
		  | newCluster (index, acc) = 
			newCluster (index - 1,
						List.nth (points, 
								 (setCenter index)) :: acc)
    in
		newCluster (nClusters, [])
    end
		

(* github.com/daveboutcher/stamp-mp/blob/master/kmeans/normal.c *)
(* github.com/dpj/DPJ/blob/master/Benchmarks/Applications/KMeans/dpj/Normal.java *)
(* NB, the Java has changed from the C: *)
(*    the C terminates on either the change from successive runs being *)
(*    less than the specfied thresh hold or 500 iterations *)
(*    the Java is hardcoded to run for 10 iterations and then stop *)
(* we're going with the Java for consistency *)
fun execute (points : Point.t list,
			 nClusters : int,
			 threshold : real,
			 randomPtr : Random.rand,
			 debug : bool) =
    let
		(* helper function for debugging *)
		fun printIterationInfo (index, points) =
			print(genericDebugFmt "\nLoop iteration index: " 
								  index 
								  "\npoints: " 
								  (map Point.featuresRepr points))					
		val initialClusters = initializeClusters(points, nClusters, randomPtr, debug)
		(* here, the Java only updates a cluster center if a global variable *)
		(* has marked it as "dirty." i think the more sml-ish approach is to *)
		(* just update all of them *)
		fun loop (10, clusterCenters) = 
			if debug then
				(printIterationInfo (10, clusterCenters);
				clusterCenters)
			else
				clusterCenters
		  | loop (index, clusterCenters) = 
			(* wow, adding logging is cumbersome... *)
			let
				val ans = work(points, clusterCenters, debug)
			in
				if debug then
					(printIterationInfo (index, ans);
					 loop (index + 1, ans))
				else 
					loop(index + 1, ans)	    
			end
    in
		loop (0, initialClusters)
    end


end 
								 
