signature POINT = sig
    type t
    exception NotEnoughFeatures
    exception InvalidFieldIndex
	     
    val repr : t -> string
    val printPoint : t -> unit
    val printPointList : t list -> unit
    val Point : int -> t
    val pointFromList : real list -> t
    val pointToList : t -> real list
    val featureListToPoints : real list list -> t list
    val pointsToFeatureList : t list -> real list list

    val add : t * t -> t
			   
    val getSize : t -> int
    val incSize : t -> t
    val resetSize : t -> t

    val getNumFeatures : t -> int

    val featuresRepr : t -> string
	val featuresSizeRepr : t -> string
end

structure Point :> POINT = struct 
exception NotEnoughFeatures
exception InvalidFieldIndex

(* member variables become record field names *)
(* features: values on each axis, *)
(* numFeatures: feature count, *)
(* membership: id of the cluster that the point belongs to *)
(* size: count of the points that have been added to a cluster *)
type t = {
    numFeatures : int,
    features : real list,
    size : int
}

(* methods are t, ... -> t functions contained in the *)
(* Point structure, public methods are in the signature *)


(* name follows the Java convention *)
fun Point (numFeatures) =
    let
	fun zeroFill (x) = 0.0
	val ret = {
	    features = List.tabulate(numFeatures, zeroFill),
	    numFeatures = numFeatures,
	    size = 0
	}
    in
	ret
    end

fun pointFromList (fs) = 
    let
	val ret = {
	    features = fs,
	    numFeatures = length(fs),
	    size = 0
	}
    in
	ret
    end

(* all of the other methods of the Java class are getters and setters *)

fun getSize ({size=n, ...} : t) = 
    n

fun incSize ({numFeatures=nF, features=fs, size=n} : t) =
    {numFeatures=nF, features=fs, size=n + 1}
    
fun resetSize ({numFeatures=nF, features=fs, size=n}) =
    let 
	val realN = Real.fromInt n
    in
	{
	  numFeatures = nF, 
	  features = map (fn f => f/realN) fs ,
	  size = 0
	}		   
    end

fun getNumFeatures({numFeatures=nF, ...} : t) =
    nF


fun transpose [] = []
  | transpose ([]::_) = []
  | transpose xss = map hd xss :: transpose (map tl xss)


(* this should go from [[a, b], [c, d], [e, f]] to *)
(* [{features = [a, c, e], ...}, {features = [b, d, f], ...}] *)
(* assumes that all lists are at least as long as the first one *)
fun featureListToPoints (featuress : real list list) = 
    let
	val zippedList = transpose featuress
    in
	map pointFromList zippedList
    end

fun pointToList ({features=f, ...} : t) = 
    f

fun pointsToFeatureList (points : t list) =
    let
	val featuresByPoint = 
	    map pointToList points
    in 
	transpose featuresByPoint
    end

(* we add the sizes up here, as well, which isn't completely intuitive *)
(* but it makes the code simpler *)
fun add ({features=f1s, numFeatures = nF1, size=s1} : t, 
	 {features=f2s, numFeatures = nF2, size=s2} : t) =
    let
	fun sum (f1::f1s, f2::f2s, acc) =
	    sum(f1s, f2s, (f1 + f2) :: acc)
	  | sum ([], [], acc) = List.rev acc
	  | sum (_, [], _) = raise NotEnoughFeatures
	  | sum ([], _, _) = raise NotEnoughFeatures
    in
	{features=sum(f1s, f2s, []), numFeatures = nF1, size=s1 + s2}
    end


(* debugging convenience functions *)
fun repr({numFeatures = n, features = fs, size = m}) : string =
    let 
	fun foldReals(real, string) = 
	    string ^ Real.toString(real) ^ ", "
	fun addField (0) : string =
	    "numFeatures: " ^ Int.toString(n) ^ "\n" ^ addField(1)
	  | addField (1)  = 
	    (foldl foldReals "features: " fs) ^ "\n" ^ addField(2)
	  | addField (2) : string = 
	    "size: " ^ Int.toString(m) ^ "\n"
	  | addField (_) =
	     raise InvalidFieldIndex
    in
	addField(0)
    end
						   
fun featuresRepr ({features=fs, ...} : t) = 
    let
	fun foldFeatures(real, string) = 
	    String.concat([string, " ", (Real.toString real)])
    in
		(* foldl here to preserve order *)
		(foldl foldFeatures "[" fs) ^ "]"
    end
					    
fun featuresSizeRepr (point : t) =
	let
		val fs = featuresRepr (point)
	in
		String.concat ["{ size: ", 
					   Int.toString(getSize point), 
					   " features: ", 
					   fs, " }\n"]
	end


(* convenience function for debugging *)
fun printPoint(p) =
    let
	val res = repr(p) ^ "\n"
    in
	print res
    end

fun printPointList(ps) = 
    let 
	val lenStr = Int.toString(length(ps))
	val startStr = "Printing point list of length: " ^ lenStr ^ "\n" 
	val endStr = "-------------\n"
    in
		(print startStr;
		 app printPoint ps;
		 print endStr)
    end


end


