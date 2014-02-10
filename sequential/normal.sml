

signature NORMAL = sig
    val execute : Point.t list * int * real * Random.rand * bool -> Point.t list

	(* need to add in other functions for unit tests *)
    (* val accumulate : int * Point.t * Point.t list * bool -> Point.t list *)
    val work : Point.t list * ClusterCenter.t array -> ClusterCenter.t array
	val initializeClusterCenters :
		Point.t list * Random.rand * int * bool -> ClusterCenter.t array
	val arrayToList : 'a array -> 'a list
end

structure Normal :> NORMAL = struct

(* TODO: is Array.toList an expensive operation? *)
(* take two arrays of ClusterCenters and if any of them are non-normal in *)
(* the  first list, replace them with their counterpart in the second list *)
(* it only compares the first element because either all of the elements of *)
(* a cluster will be NaN or none of them will be *)

(* NOTE: this isn't in the original Java or C, i can't tell how they  *)
(* handle this *)
fun resolve (c1s, c2s) =
	let
		fun getPair i =
			(Array.sub(c1s, i), Array.sub(c2s, i))
		fun chooseNormal (c1, c2) =
			if (ClusterCenter.isNormal c1) then c1 else c2
		(* fun loop (acc, ~1) = acc *)
		(*   | loop (acc, i)  = loop(Array.update *)
		(* 							  (acc, i, (chooseNormal (getPair i))), *)
		(* 						  i - 1) *)
	in
		(* loop (c1s, Array.length (c1s) - 1) *)
		Array.tabulate(Array.length c1s,
					   fn x => chooseNormal (getPair x))
	end


(* this takes in a list of points and a array of clusters and does one *)
(* iteration of the algorithm -- ie it recalculates where the newest *)
(* cluster centers should be and returns a array of them *)

(* for each point in the list, it: *)
(*    1) finds the nearest cluster center *)
(*    2) adds the point to a array of "blank" cluster centers at the index *)
(* that it found in (1) *)
(* then it resetSize's the new, blank cluster centers *)
fun work (points : Point.t list, oldClusterCenters : ClusterCenter.t array) =
	let
		val newClusterCenter =
			ClusterCenter.ClusterCenter (Point.getNumFeatures (hd points))

		(* are we losing the benefit of mutable data structures by
		making this new array on every iteration?*)
		val arrForAccum = Array.tabulate (Array.length oldClusterCenters,
										   fn x => newClusterCenter)
		fun nearestOldCenter (p) =
			CommonUtil.findNearestPoint (p, oldClusterCenters)
		fun addToCenter (centers, index, point) =
			ClusterCenter.add (point, (Array.sub (centers, index)))
		fun accumulate (point, clusterCenters) =
			let
				val index = nearestOldCenter point
			in
				(Array.update (clusterCenters,
							   index,
							   addToCenter (clusterCenters, index, point));
				 clusterCenters)
			end
		val unresolved =
			(* this seems messy, is there a better way? *)
			(Array.modify
				ClusterCenter.resetSize
				(List.foldl accumulate arrForAccum points);
			 arrForAccum)
	in
		resolve (unresolved, oldClusterCenters)
	end

(* here, the Java generates a random number and ignores it with the comment *)
(* "//to test the correctness" --> line 139 *)
(* the Java lets the random value = nClusterCenters - index - 1 *)
(* converting this to use arrays of clusters *)
(* TOOD: this currently takes O(len(points) * nClusterCenters) time *)
fun initializeClusterCenters (points,
							  randomPtr,
							  nClusterCenters,
							  debug) : ClusterCenter.t array =
    let
		val nPoints = length points
		fun getMaxPoint x =
			if (nPoints - 1) > 0 then (x mod (nPoints - 1)) else
							 0
		fun setCenter index =
			(* NOTE: using "nclusters" here to follow the Java BREAKS the *)
			(* output *)
			List.nth (points,
					  (if debug then (nPoints - index - 1) else
					   (getMaxPoint (Random.randInt randomPtr))))
	in
		Array.tabulate (nClusterCenters,
						fn i => (ClusterCenter.fromPoint (setCenter i)))
    end


fun arrayToList arr =
	List.tabulate (Array.length arr, fn i => Array.sub(arr, i))

(* github.com/daveboutcher/stamp-mp/blob/master/kmeans/normal.c *)
(* github.com/dpj/DPJ/blob/master/Benchmarks/Applications/KMeans/dpj/Normalsml .java *)
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
			initializeClusterCenters(points, randomPtr, nClusterCenters, debug)

		(* helper function for debugging *)
		(* fun printIterationInfo (index, points) = *)
		(* 	print(genericDebugFmt "\nLoop iteration index: "  *)
		(* 						  index  *)
		(* 						  "\npoints: "  *)
		(* 						  (map Point.featuresRepr points))					 *)
		(* val _ = if debug then *)
		(* 			printIterationInfo (~1, initialClusterCenters) *)
		(* 		else () *)

		fun loop (10, clusterCenters : ClusterCenter.t array) = clusterCenters
		  | loop (index, clusterCenters) =
			loop (index + 1, work(points, clusterCenters))
		val finalClusterCenters = loop (0, initialClusterCenters)
    in
		(* arrayToList ((Array.app *)
		(* 				  ClusterCenter.getPoint *)
		(* 				  (loop (0, initialClusterCenters))); *)
		(* 			 initialClusterCenters) *)

		List.tabulate ((Array.length finalClusterCenters),
					   (fn i : int => (ClusterCenter.getPoint
								   (Array.sub (finalClusterCenters, i)))))

    end
end


(* fun printIntermediate  *)
