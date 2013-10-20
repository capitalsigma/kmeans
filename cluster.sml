use "point.sml"

structure Cluster = struct

(* this may be unnecessary *)
type t = {
    clusterCenters : real array array,
    bestNClusters : int
}

fun extractMoments(singleVariable)
    let 
	val len = length singleVariable
	val zeroth_moment = (foldr op+ 0 singleVariable) / len
	fun get_variance (dataPoint) =
	    Math.pow(dataPoint - zerothMoment, 2)
	val first_moment = 
	    (foldr op+ 0 (map get_variance singleVariable)) / len
    in
	[zeroth_moment, first_moment]
    end

fun zscoreTransform(points : Point.t array,
		    numObjects : int, (* == len(points) ? *)
		    numAttributes : int) : Point.t array =

   let
       (* singleFeatureNormalize = one iteration of the outer for loop *)
       (* single_features collects attributes from each point *)
       fun singleFeatureNormalize (single_features : real array) =
	   let 
	       val moments = extractMoments(single_feature, numObjects, 2)
	       val zeroth_moment = #0 moments
	       val first_moment = Math.sqrt(#1(moments))
					    
	       fun normalize(single_feature) =
		   (single_feature - zeroth_moment) / first_moment
	   in
	       map normalize single_features
	   end
       (* this is intended to replace the  *)
       (* for(i=0; i<numFeatures; i++){ *)
       (*     points[j].getFeature[i] *)
       (* } *)
       (* loop in the Java code *)
       val featureList = Point.pointsToFeatureList points
       val normalizedFeatures = map singleFeatureNormalize featureList 
   in
       Point.featureListToPoints normalizedFeatures
	
   end
		   

(* http://www.smlnj.org/doc/FAQ/faq.txt for random seeding *)
fun execute(numObjects : int,	
	    numAttributes : int, 
	    attributes : Point.t array,
	    use_szcore_transform : bool,
	    min_nclusters : int,
	    max_nclusters : int,
	    threshold : real)
	   let
	      val normalized_attrs = zscoreTransform(attributes,
						     numObjects,
						     numAttributes)
	      val now = Time.now()
	      val sec = Time.fromSeconds(Time.toSeconds now)
	      val usec = Time.toMicroseconds(Time.toMicroSeconds now)
	      val randomPtr = Random.rand(sec, usec)
	   in
	       (* this needs to change to select the best centers out of all *)
	       (* of them. it looks like Normal is responsible for this in *)
	       (* the Java. *)
	       map Normal.execute(attributes,
				  numAttributes,
				  numObjects,
				  nClusters,
				  threshold,
				  randomPtr)
	   end

				  

			       
		  
end
