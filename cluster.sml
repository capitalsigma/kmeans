use "point.sml"

structure Cluster = struct

(* this may be unnecessary *)
type t = {
    clusterCenters : real array array,
    bestNClusters : int
}

fun extractMoments(data, num_elts, num_moments) =
    ()

fun zscoreTransform(data : Point.t array,
		    numObjects : int,
		    numAttributes : int) : Point.t array =
    (* single_variable collects attributes from each point *)
    let 
	(* singleVar = one iteration of the outer for loop *)
	fun singleVar (single_features : real array) =
	    let 
		val moments = extractMoments(single_feature, numObjects, 2)
		val zeroth_moment = #0(moments)
		val first_moment = Math.sqrt(#1(moments))
					    
		fun normalize(single_feature) =
		    (single_feature - zeroth_moment) / first_moment
	    in
		map normalize single_features
	    end
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
			       
		  
