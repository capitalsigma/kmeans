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

	val mapOnFeatures : (real -> real) * t -> t
    val getNumFeatures : t -> int

end

functor ClusterCenterFunctor (P: POINT) =
		struct
		type t = {
			Point : P.t,
			size : int
		}
					 
		fun ClusterCenter (nFeatures) : t=
			{
			  Point = P.Point nFeatures, 
			  size = 0
			}

		fun fromPoint (point : P.t) : t= 
			{
			  Point = point,
			  size = 0
			}

		fun getPoint ({Point=p, size=n} : t) : P.t =
			p

		fun getSize ({Point=p, size=n} : t)  = 
			n

		fun add ({Point=p, size=n} : t, point : P.t) : t = 
			{
			  Point = P.add(p, point),
			  size = n + 1
			}
				
		(* TODO: does this recalculate Int.toReal every time? *)
		fun resetSize({Point=p, size=n})= 
			{
			  Point = P.mapOnFeatures(fn x => x / (Real.fromInt n), p),
			  size = 0
			}

		end
			

structure Point :> POINT = struct 
exception NotEnoughFeatures
exception InvalidFieldIndex

type t = {features: real list}

(* methods are t, ... -> t functions contained in the *)
(* Point structure, public methods are in the signature *)


(* name follows the Java convention *)
fun Point (numFeatures) : t =
	{features = List.tabulate(numFeatures, fn x => 0.0)}


fun pointFromList (fs) = 
	let
		val ret = {
			features = fs
		}
	in
		ret
	end

(* all of the other methods of the Java class are getters and setters *)
		
fun mapOnFeatures (operation, {features = fs} : t) : t= 
	{features = map operation fs}


fun getNumFeatures({features = fs}) =
	length(fs)


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

fun pointToList ({features=fs}) = 
	fs

fun pointsToFeatureList (points : t list) =
	transpose (map pointToList points)


fun add ({features=f1s} : t, {features=f2s} : t) =
	{features = ListPair.mapEq op+  (f1s, f2s)}
		
	
fun repr ({features=fs}) = 
	let
		fun foldFeatures(real, string) = 
			String.concat([string, " ", (Real.toString real)])
	in
		(* foldl here to preserve order *)
		(foldl foldFeatures "[" fs) ^ "]"
	end
		
(* convenience function for debugging *)
fun printPoint(p) =
	print (repr(p) ^ "\n")

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


structure ClusterCenter = ClusterCenterFunctor(Point)
