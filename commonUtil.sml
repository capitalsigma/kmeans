use "point.sml";

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
	val maxDist = Real.maxFinite
	fun minDistance (c::cs, maxDist, indexOfNearest, i) =
	    let 
		val newDist = euclidDist(point, c)
	    in
		if (newDist / maxDist) < limit then
		    minDistance(cs, newDist, i, i + 1)
		else
		    minDistance(cs, maxDist, indexOfNearest, i + 1)
	    end
	  | minDistance ([], _, indexOfNearest, _) = indexOfNearest
    in
	minDistance(clusters, maxDist, ~1, 0)
    end
		    
end

			   
(* unit tests *)

val [p1, p2] = map Point.pointFromList [[1.0, 1.0], [0.0, 0.0]]
val eucDist = CommonUtil.euclidDist(p1, p2)

val p3 = Point.pointFromList [2.0, 1.0]
val nearest = CommonUtil.findNearestPoint(p3, [p1, p2])
