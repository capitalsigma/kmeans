signature POINT = sig
    type t
    type col
    exception NotEnoughFeatures
    exception InvalidFieldIndex
	     
    val repr : t -> string
    val printPoint : t -> unit
    val Point : int -> t
    val pointFromVector : real col -> t
    val zipVectorToPoints : real col col -> t col
end

structure Point :> POINT = struct 
exception NotEnoughFeatures
exception InvalidFieldIndex

(* member variables become record field names *)
(* features: values on each axis, *)
(* numFeatures: feature count, *)
(* membership: id of the cluster that the point belongs to *)
type t = {
    numFeatures : int,
    features : real list,
    membership : int 
}

fun repr({numFeatures = n, features = fs, membership = m}) : string =
    let 
	fun foldReals(real, string) = 
	    string ^ Real.toString(real) ^ ", "
	fun addField (0) : string =
	    "numFeatures: " ^ Int.toString(n) ^ "\n" ^ addField(1)
	  | addField (1)  = 
	    (Vector.foldl foldReals "features: " fs) ^ "\n" ^ addField(2)
	  | addField (2) : string = 
	    "membership: " ^ Int.toString(m) ^ "\n"
	  | addField (_) =
	     raise InvalidFieldIndex
    in
	addField(0)
    end
						   
	    


(* convenience function for debugging *)
fun printPoint(p) =
    let
	val res = repr(p)
    in
	print res
    end

(* methods are t, ... -> t functions contained in the *)
(* Point structure, public methods are in the signature *)

(* name follows the Java convention *)
fun Point(numFeatures) =
    let
	fun zeroFill (x) = 0
	val ret = {
	    features = Vector.tabulate(numFeatures, zeroFill),
	    numFeatures = numFeatures,
	    membership = ~1
	}
    in
	ret
    end

fun pointFromVector(fs : real vector) = 
    let
	val ret = {
	    features = fs,
	    numFeatures = Vector.length(fs),
	    membership = ~1
	}
    in
	ret
    end

(* all of the other methods of the Java class are getters and setters *)
(* they have been ommitted as unnecessary *)

(* this should go from [[a, b], [c, d], [e, f]] to *)
(* [{features = [a, c, e], ...}, {features = [b, d, f], ...}] *)
(* assumes that all vectors are at least as long as the first one *)
(* i'm not sure what the time complexity of prepending to vectors is *)
(* this could be bad *)
fun zipToPoints(featuress : real vector vector) = 
    let
	val numFeatures = Vector.length(Vector.sub(featuress, 0))
	fun extractFeature (i) : real vector =
	    Vector.map (fn func fs => Vector.sub(fs, i)) featuress
	fun zipToVector (#[], i) = (* starting case *)
	    zipToVector (extractFeature(i), i - 1)
	  | zipToVector (acc, 0) = acc (* base case *)
	  | zipToVector (acc, i) = 
	    let 		
		val row = extractFeature(i)
		fun itemWiseAppend (index, rowElement) = 
		    Vector.concat(Vector.tabulate(1, rowElement),
				  Vector.sub(acc, index))
	    in
		zipToVector((Vector.mapi itemWiseAppend row), i - 1)
	    end
    in
	Vector.map pointFromVector zipToVector(#[], numFeatures)
    end
end 


(* Unit Tests *)
val p = Point.Point(5)
val _ = Point.printPoint(p)
