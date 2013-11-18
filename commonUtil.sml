signature COMMONUTIL = sig
	val euclidDist : Point.t * Point.t -> real
	val findNearestPoint : Point.t * ClusterCenter.t vector -> int
end

structure CommonUtil = struct

(* the Java defines this as the sum from i = 0 to numFeatures of*)
(* dist = (point.getFeature[i] - point.getFeature[i]) ^ 2 *)
fun euclidDist (point1, point2) = 
    let 
	val [features1, features2] = map Point.pointToList [point1, point2]
	fun distFunc (f1, f2) =
	    Math.pow(f1 - f2, 2.0)
	fun sumDistSq (f1::f1s, f2::f2s, acc) = 
	    sumDistSq (f1s, f2s, acc + distFunc(f1, f2))
	  | sumDistSq ([], [], acc) = acc
	  | sumDistSq (_, [], acc) = raise Point.NotEnoughFeatures
	  | sumDistSq ([], _, acc) = raise Point.NotEnoughFeatures
    in
	sumDistSq (features1, features2, 0.0)
    end


fun findNearestPoint(point, clusters) = 
    let 
	val limit = 0.99999 	(* ??? from the Java *)
	val maxDist = Real.posInf
	val numClusters = Vector.length (clusters)
	fun minDistance (_, indexOfNearest, 0) = indexOfNearest
	  | minDistance (maxDist, indexOfNearest, i) =
	    let 
			val newDist = euclidDist(point, Vector.sub (clusters, i))
	    in
			if (newDist / maxDist) < limit then
				minDistance(newDist, i, i + 1)
			else
				minDistance(maxDist, indexOfNearest, i + 1)
	    end
    in
		minDistance(maxDist, ~1, numClusters)
    end
		    
end
