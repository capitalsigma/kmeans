(* type parray = list *)
(* type double = real *)

signature POINT = sig
    type t

    (* exception NotEnoughFeatures *)
    (* exception InvalidFieldIndex *)

    (* val repr : t -> string *)
    (* val printPoint : t -> unit *)
    (* val printPointList : t list -> unit *)

	val Point : int -> t
    (* val pointFromList : double list -> t *)
    (* val pointToList : t -> double list *)
    (* val featureListToPoints : double list list -> t list *)
    (* val pointsToFeatureList : t list -> double list list *)

    (* val add : t * t -> t *)

	(* val mapOnFeatures : (double -> double) * t -> t *)
    (* val getNumFeatures : t -> int *)

	val compare : t * t -> order
	(* val isNormal : t -> bool *)
end

(* signature CLUSTER_CENTER = sig *)
(* 	structure P : POINT *)

(* 	type t *)

(* 	val ClusterCenter : int -> t *)
(* 	val fromPoint : P.t -> t *)

(* 	val getPoint : t -> P.t *)
(* 	val getSize : t -> int *)

(* 	val add : P.t * t  -> t *)
(* 	val resetSize : t -> t *)

(* 	val compare : t * t -> order *)
(* 	val compareSize : t * t -> order *)

(* 	val isNormal : t -> bool *)
(* end *)

(* funsig CLUSTER_CENTER_FUNSIG (P : POINT) =  *)
(* CLUSTER_CENTER_SIG where type t' = P.t *)

(* TODO: make this an opaque signature later on *)

(* functor ClusterCenterFunctor (P : POINT) : CLUSTER_CENTER =  *)
(* 		struct *)
(* 		structure P = P *)

(* 		type t = { *)
(* 			Point : P.t, *)
(* 			size : int *)
(* 		} *)

(* 		fun ClusterCenter (nFeatures) : t = *)
(* 			{ *)
(* 			  Point = P.Point nFeatures,  *)
(* 			  size = 0 *)
(* 			} *)

(* 		fun fromPoint (point : P.t) : t=  *)
(* 			{ *)
(* 			  Point = point, *)
(* 			  size = 0 *)
(* 			} *)

(* 		fun getPoint ({Point=p, size=n} : t) : P.t = *)
(* 			p *)

(* 		fun getSize ({Point=p, size=n} : t)  =  *)
(* 			n *)

(* 		fun add (point : P.t, {Point=p, size=n} : t) : t =  *)
(* 			{ *)
(* 			  Point = P.add(p, point), *)
(* 			  size = n + 1 *)
(* 			} *)

(* 		(* TODO: does this recalculate Double.fromInt every time? *) *)
(* 		fun resetSize({Point=p, size=n})=  *)
(* 			{ *)
(* 			  Point = P.mapOnFeatures(fn x => x / (Double.fromInt n), p), *)
(* 			  size = 0 *)
(* 			} *)


(* 		(* TODO: is this SML-ish style? I've been following the Python... *) *)
(* 		fun compare({Point=p1,...} : t , {Point=p2,...} : t)  = *)
(* 			P.compare(p1, p2) *)

(* 		fun compareSize({size=n1,...} : t, {size=n2,...} : t) =  *)
(* 			Int.compare(n1, n2) *)

(* 		fun isNormal c = P.isNormal (getPoint c) *)

(* 		end *)


structure Point : POINT = struct
exception NotEnoughFeatures
exception InvalidFieldIndex

type t = double parray

(* name follows the Java convention *)
fun Point (numFeatures : int) : t =
	(* PArray.tabulate(numFeatures, fn x => 0.0) *)
	(* [| fn x => 0.0 | x in [|0 to (numFeatures - 1)|]|] *)
	(* PArray.map (fn x => 0.0) List.tabulate(fn x => x, numFeatures) *)
	let
		val tmp  = [| 0 to numFeatures-1 |]
	in
		PArray.map (fn x => 0.0) tmp
	end


(* fun pointFromList (fs : double list) : t = *)
(* 	[| x | x in fs |] *)


(* all of the other methods of the Java class are getters and setters *)

fun mapOnFeatures (operation, fs : t) : t =
	PArray.map operation fs


(* fun getNumFeatures(fs) = *)
(* 	PArray.length(fs) *)


(* fun hd(x::xs) = *)
(* 	x *)

(* fun tl(x::xs) = *)
(* 	xs *)

(* fun transpose ([]) = [] *)
(*   | transpose ([]::_) = [] *)
(*   | transpose (xss) = (map hd xss) :: transpose (map tl xss) *)



(* this should go from [[a, b], [c, d], [e, f]] to *)
(* [{features = [a, c, e], ...}, {features = [b, d, f], ...}] *)
(* assumes that all lists are at least as long as the first one *)
(* fun featureListToPoints (featuress) = *)
(* 	let *)
(* 		val zippedList = transpose featuress *)
(* 	in *)
(* 		PArray.map pointFromList zippedList *)
(* 	end *)

(* fun pointToList (fs) : double list = *)
(* 	fs *)

(* fun pointsToFeatureList (points : t list) = *)
(* 	transpose (map pointToList points) *)


(* fun add (f1s : t, f2s : t) = *)
(* 	ListPair.mapEq (fn (x, y) => x + y)  (f1s, f2s) *)


(* fun repr (fs : t) = *)
(* 	let *)
(* 		fun foldFeatures(double, string) = *)
(* 			String.concat([string, " ", (Double.toString double)]) *)
(* 	in *)
(* 		(* foldl here to preserve order *) *)
(* 		(foldl foldFeatures "[" fs) ^ "]" *)
(* 	end *)

(* (* convenience function for debugging *) *)
(* fun printPoint(p : t) = *)
(* 	print (repr(p) ^ "\n") *)

(* fun printPointList(ps : t list) = *)
(* 	let *)
(* 		val lenStr = Int.toString(PArray.length(ps)) *)
(* 		val startStr = "Printing point list of length: " ^ lenStr ^ "\n" *)
(* 		val endStr = "-------------\n" *)
(* 	in *)
(* 		(print startStr; *)
(* 		 app printPoint ps; *)
(* 		 print endStr) *)
(* 	end *)


(* fun compare (f1s : t, f2s : t) = *)
(* 	let *)
(* 		fun loop (f1::f1s, f2::f2s) = *)
(* 			(case Double.compare(f1, f2) of *)
(* 				 EQUAL => loop(f1s, f2s) *)
(* 			   (* can this be simplified? *) *)
(* 			  | x : order => x) *)
(* 		  | loop ([], []) = EQUAL *)
(* 		  | loop (_, _) = raise NotEnoughFeatures *)
(* 	in *)
(* 		loop (f1s, f2s) *)
(* 	end *)

(* FIXME FIXME FIXME *)
fun compare (f1s : t, f2s : t) =
	EQUAL

(* 	let *)
(* 		fun loop (f1::f1s, f2::f2s) = *)
(* 			(case Double.compare(f1, f2) of *)
(* 				 EQUAL => loop(f1s, f2s) *)
(* 			   (* can this be simplified? *) *)
(* 			  | x : order => x) *)
(* 		  | loop ([], []) = EQUAL *)
(* 		  | loop (_, _) = raise NotEnoughFeatures *)
(* 	in *)
(* 		loop (f1s, f2s) *)
(* 	end *)

(* (* fun isNormal p = *) *)
(* (* 	let *) *)
(* (* 		fun loop ([]) = true *) *)
(* (* 		  | loop (x::xs)  = if (Real.isNormal x) then (loop xs) else false *) *)
(* (* 	in *) *)
(* (* 		loop p *) *)
(* (* 	end *) *)



end

(* structure ClusterCenter = ClusterCenterFunctor(Point) *)
