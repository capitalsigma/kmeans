(* signature PARRAY_PAIR = sig *)
(* 	(* ('a, 'b) type ('a, 'b) t *) *)
(* 	type ('a, 'b) t = ('a * 'b) parray *)

(* 	(* uncommenting causes a syntax error: *) *)
(* 	(* [./util.pml:6.2] Error: syntax error; ('a, 'b) try deleting "exception" *) *)
(* 	(* exception UnequalLengths *) *)

(* 	val fromPairPArray : ('a * 'b) parray -> ('a, 'b) t *)

(* 	val zip : 'a parray * 'b parray -> ('a, 'b) t *)
(* 	val compare : ('a * 'a -> order) * ('b * 'b -> order) -> ('a, 'b) t * ('a, 'b) t -> order *)

(* 	val zipEq : 'a parray * 'b parray -> ('a, 'b) t *)
(* end *)


structure PArrayPair = struct
type ('a, 'b) t = ('a * 'b) parray

exception UnequalLengths

fun fromPairPArray (xs : ('a * 'b) parray) : ('a, 'b) t =
	xs

fun shortest (xs : 'a parray, ys : 'b parray) : int =
	Int.min(PArray.length xs,
			PArray.length ys)


fun shortestRange (xs : 'a parray, ys : 'b parray) : int parray =
	(* ('a, 'b) tODO: is ('a, 'b) this reevaluated at every step? also, is it preferable
	to use a list here? *)

	[| 0 to shortest (xs, ys) |]

fun zip (xs : 'a parray, ys : 'b parray) : ('a, 'b) t =
	(* ('a, 'b) tODO: is shortestRange reevaluated at every step? *)
	(* [| (xs ! i, ys ! i) | i in shortestRange (xs, ys) |] *)
	[| (x, y) | x in xs, y in ys |]



fun zipEq (xs : 'a parray, ys : 'b parray) =
	if PArray.length xs <> PArray.length ys then
		raise UnequalLengths
	else
		zip (xs, ys)

fun compare (comp : ('a * 'a) -> order, comp' : ('b * 'b) -> order) =
	fn (xs : ('a, 'b) t, ys : ('a, 'b) t) =>
	   let
		   fun comparePair ((one : 'a, two : 'b),
							(one' : 'a, two' : 'b)) : (order * order) =
			   (comp (one, one'), comp' (two, two'))

		   fun selectUnequal (ord : order, ord' : order) : order =
			   (case (ord, ord')
				 of (EQUAL, LESS) => LESS
				  | (EQUAL, MORE)  => MORE
				  | (LESS, _)  => LESS
				  | (MORE, _) => MORE
				  | (_, _) => EQUAL)

		   val compared : (order * order) parray =
			   [| comparePair (xs ! i, ys ! i) | i in shortestRange(xs, ys) |]

		   val asOrders =
			   [| selectUnequal x | x in compared |]
	   in
		   PArray.reduce selectUnequal EQUAL asOrders
	   end

end
