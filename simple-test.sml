(* set debug to true for our test case, 1 cluster *)

val ansListList = KMeans.KMeans("color100", 1, 1, 1, true)
fun printPointList [] = 
	print "-----\n"
  | printPointList p::ps = 
	(Point.printPoint p; 
	 printPointList ps)
	

val _ = app printPointList ansListList
