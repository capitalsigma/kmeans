use "point.sml"

structure Cluster = struct

(* this may be unnecessary *)
type t = {
    clusterCenters : real array array,
    bestNClusters : int
}

fun extractMoments(data, num_elts, num_moments) =
    ()

fun zscoreTransform(points : Point.t array,
		    numObjects : int, (* == len(points) ? *)
		    numAttributes : int) : Point.t array =

   let
       (* singleFeatureNormalize = one iteration of the outer for loop *)
       (* single_features collects attributes from each point *)
       fun singleFeatureNormalize (single_features : real array) =
	   let 
	       val moments = extractMoments(single_feature, numObjects, 2)
	       val zeroth_moment = #0(moments)
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
       fun extractSingleFeatureFromAllPoints (index) = 	       
	   map (fn index => sub(points, index)) points
       fun collectSingleFeature
   in
       
	
end
		   

fun execute(nthreads : int, 
	    numObjects : int,	
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
	       (* seed random value *)
			       
		  
