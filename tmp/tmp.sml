signature TEST = sig
	type t

	val ex : 'a * 'a -> t
end

structure Test = struct
type t = int * int

val somePair = (1, 2)

fun ex (pair : 'a * 'a) =
	pair

end


val _ = Test.ex((1, 2))
