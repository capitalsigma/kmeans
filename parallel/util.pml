signature PARRAY_PAIR = sig
	(* type t *)
	type t = ('a * 'b) parray

	(* uncommenting causes a syntax error: *)
	(* [./util.pml:6.2] Error: syntax error; try deleting "exception" *)
	(* exception UnequalLengths *)

	val fromPairPArray : ('a * 'b) parray -> t

	val zip : 'a parray * 'b parray -> t
	val compare : ('a * 'a -> order) * ('b * 'b -> order) -> t * t -> order

	val zipEq : 'a parray * 'b parray -> t
end


structure PArrayPair : PARRAY_PAIR = struct
type t = ('a * 'b) parray

exception UnequalLengths

fun fromPairPArray xs : t =
	xs

fun shortest (xs : t, ys : t) : int =
	Int.min(PArray.length xs,
			PArray.length ys)


fun shortestRange (xs : t, ys : t) : int parray =
	(* TODO: is this reevaluated at every step? also, is it preferable
	to use a list here? *)

	[| 0 to shortest (xs, ys) |]

fun zip (xs, ys) : t =
	(* TODO: is shortestRange reevaluated at every step? *)
	[| (xs ! i, ys ! i) | i in shortestRange (xs, ys) |]


fun zipEq (xs, ys) : t =
	if PArray.length xs <> PArray.length ys then
		raise UnequalLengths
	else
		zip (xs, ys)

fun compare (comp : ('a * 'a) -> order, comp' : ('b * 'b) -> order) =
	fn (xs : t, ys : t) =>
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
