CM.make "./kmeans.cm";
CM.make "$smlnj-tdp/back-trace.cm";

(* set debug to true for our test case, 1 cluster *)
val ansListList = KMeans.KMeans("inputs/color10", 1, 3, 1, 1.0, true)

val _ = (app Point.printPointList ansListList;
		 OS.Process.exit 0)
