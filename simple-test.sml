(* set debug to true for our test case, 1 cluster *)

val ansListList = KMeans.KMeans("color100", 1, 1, 1, 1.0, false)
	

val _ = app Point.printPointList ansListList
