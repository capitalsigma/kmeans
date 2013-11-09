structure Cluster = struct
(* i dropped the other two parameters here because numObjects = length *)
(* singleVariable and 2 is hardcoded as the number of moments to extract *)
fun extractMoments (singleVariable) = 
    let 
		val len = Real.fromInt (length singleVariable)
		val zerothMoment = (foldr op+ 0.0 singleVariable) / len
		fun getVariance (dataPoint) =
			Math.pow(dataPoint - zerothMoment, 2.0)
		val firstMoment = 
			(foldr op+ 0.0 (map getVariance singleVariable)) / len
    in
		(zerothMoment, firstMoment)
    end

fun zscoreTransform (points : Point.t list) = 
    let
		(* singleFeatureNormalize = one iteration of the outer for loop *)
		(* singleFeatures collects attributes from each point *)
		fun singleFeatureNormalize (singleFeatures : real list) =
			let 
				val (m0, m1) = extractMoments(singleFeatures) 
				val zerothMoment = m0
				val firstMoment = Math.sqrt(m1)
				(* debugging *)
				val _ = (app (fn x => print (String.concat([(Real.toString x), " "]))) [m0, m1];
						 print "-------\n")
				fun normalize(singleFeatures) =
					(singleFeatures - zerothMoment) / firstMoment
			in
				map normalize singleFeatures
			end
		(* this is intended to replace the  *)
		(* for(i=0; i<numFeatures; i++){ *)
		(*     points[j].getFeature[i] *)
		(* } *)
		(* loop in the Java code *)
		val featuresList = Point.pointsToFeatureList points
		val normalizedFeatures = map singleFeatureNormalize featuresList 
    in
		  Point.featureListToPoints normalizedFeatures
    end
		

(* http://www.smlnj.org/doc/FAQ/faq.txt for random seeding *)
(* following the Java, minClusters to maxClusters is an inclusive range *)
fun execute(points : Point.t list,	
			minClusters : int,
			maxClusters : int,
			threshold : real) = 
    let
		val normalizedPoints = zscoreTransform(points)	
		fun convert time = Int.fromLarge (Int.toLarge (Option.valOf Int.maxInt))
		val sec = convert (Time.toSeconds (Time.now()))
		val usec = convert (Time.toMicroseconds (Time.now()))
		val randomPtr = Random.rand(sec, usec)
		val clusterRange = List.tabulate (maxClusters - minClusters + 1, 
										  fn i => minClusters + i)
		fun getNormal (nClusters) = 
			Normal.execute(normalizedPoints,
						   nClusters,
						   threshold,
						   randomPtr)

    in
		(* this needs to change to select the best centers out of all *)
		(* of them. it looks like Normal is responsible for this in *)
		(* the Java. *)
		map getNormal clusterRange
    end	
end

