signature POINT = sig
    type t
    exception NotEnoughFeatures
    exception InvalidFieldIndex
	     
    val repr : t -> string
    val printPoint : t -> unit
    val Point : Int.int -> t
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
    features : real array,
    membership : int 
}

fun repr({numFeatures = n, features = fs, membership = m}) : string =
    let 
	fun foldReals(real, string) = 
	    string ^ Real.toString(real)
	fun addField (0) : string =
	    "numFeatures: " ^ Int.toString(n) ^ "\n" ^ addField(1)
	  | addField (1)  = 
	    (Array.foldl foldReals "features: " fs) ^ "\n" ^ addField(2)
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
	val ret = {
	    features = Array.array(numFeatures, 0.0),
	    numFeatures = numFeatures,
	    membership = ~1
	}
    in
	ret
    end
end 


(* all of the other methods of the Java class are getters and setters *)
(* they have been ommitted as unnecessary *)

(* Unit Tests *)
val p = Point.Point(5)
val _ = Point.printPoint(p)
