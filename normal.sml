use "commonUtil.sml";

(* we use this sig for information hiding, "execute" is all the outside *)
(* world needs to know about *)
signature NORMAL = sig
    val execute : Point.t list * int * real * Random.rand -> Point.t list

(* need to add in other functions for unit tests *)

    val accumulate : int * Point.t * Point.t list * Point.t list -> Point.t list

end

structure Normal :> NORMAL = struct


(* helper function for work(), as in the Java *)
fun accumulate (index, pointAdded, oldClusterCenters, newClusterCenters) = 
    let
	(* i think this fixes my previous problem of accidentally *)
	(* accumulating everything in the same list *)
	val toUpdate = List.nth(oldClusterCenters, index)
	val updated = Point.add(toUpdate, pointAdded)
    in
	List.take(newClusterCenters, index) @
	[(Point.incSize updated)] @
	List.drop(newClusterCenters, index + 1)
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
fun work (points, oldClusterCenters) = 
    let	
	fun loop (p::ps, newClusterCenters) =
	    loop (ps, 
		  accumulate(CommonUtil.findNearestPoint(p, oldClusterCenters),
			     p,
			     oldClusterCenters,
			     newClusterCenters))
	  | loop ([], newClusterCenters) = newClusterCenters
	val numFeatures = Point.getNumFeatures(hd oldClusterCenters)
	val centersForAcc = map (fn x => Point.Point numFeatures) oldClusterCenters
	val tmp = loop (points, centersForAcc) (* TODO: REMOVE *)
    in
	(* in the Java, this is handled by Normal.execute *)
	(* it fits more naturally here *)
	(app Point.printPoint tmp; 
	 map Point.resetSize (tmp))
    end

(* here, the Java generates a random number and ignores it with the comment *)
(* "//to test the correctness" --> line 139 *)
(* the Java lets the random value = nClusters - index - 1 *)
fun initializeClusters (points, nClusters, randomPtr) =
    let
	val nPoints = length(points)
	fun newCluster (0, acc) = List.rev acc
	  | newCluster (index, acc) = 
	    newCluster (index - 1,
			List.nth (points, 
				  Random.randInt (randomPtr) mod nPoints) :: acc)
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
	    randomPtr : Random.rand) =
    let
	val initialClusters = initializeClusters(points, nClusters, randomPtr)
	(* here, the Java only updates a cluster center if a global variable *)
	(* has marked it as "dirty." i think the more sml-ish approach is to *)
	(* just update all of them *)
	fun loop (10, clusterCenters) = clusterCenters
	  | loop (index, clusterCenters) = 
	    loop(index + 1, work(points, clusterCenters))	    
    in
	loop (0, initialClusters)
    end


end 
	   
(* unit tests  *)

(* TODO: the problem here is that you're not giving it a fresh set of  *)
(* new cluster centers for each iteration of work() -- you started adding *)
(* this in, but you need to finish it tomorow *)

functor NormalUnitTest (N : NORMAL) =
	struct
	open N


	val realList = [[1.0, 1.0], [2.0, 2.0], [3.0, 3.0], [4.0, 4.0]]
	val onePoint = Point.pointFromList [1.5, 1.5]
	val dataSet = map Point.pointFromList realList				
	val blankDataSet = map (fn x => Point.Point 2) [1, 2, 3]
			
	fun printOut (points) = 
	     app Point.printPoint points
	  
	fun testAccumulate () = 
	    printOut (accumulate (0, onePoint, dataSet, blankDataSet))
	    

	fun testExecute () = 
	    printOut (Normal.execute(dataSet, 
				     2,
				     1.0,
				     Random.rand(0, 0)))
		     
	end

structure TestNormal = NormalUnitTest(Normal)


