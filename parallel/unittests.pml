(* signature TESTING = sig *)
(* 	val assert : bool * string -> unit *)
(* 	val assertOrd : ('a * 'a -> order) * order * 'a * 'a * string -> unit *)
(* 	val assertEq : ('a * 'a -> order) * 'a * 'a * string -> unit *)
(* end *)

(* apparently manticore doesn't have opaque types? *)
structure Testing = struct

fun pass (msg) =
	print (msg ^ " pass\n")


fun assert (b : bool, msg : string) =
	if b then pass (msg) else raise Fail(msg)

fun assertOrd (eqFunc : ('a * 'a -> order), ord : order,
			  x : 'a, y : 'a, msg) =
	if  eqFunc (x, y) = ord then
		pass (msg)
	else
		raise Fail(msg)


fun assertEq (eqFunc : ('a * 'a -> order), x : 'a, y : 'a, msg) =
	assertOrd (eqFunc, EQUAL, x, y, msg)

(* fun assertEq (eqFunc : ('a * 'a -> order), x : 'a, y : 'a, msg) = *)
(* 	if  eqFunc (x, y) = EQUAL then *)
(* 		pass (msg) *)
(* 	else *)
(* 		raise Fail(msg) *)
(* end *)
end

signature COMPARABLE = sig
	type t
	val compare : t * t -> order
end

signature EXECUTABLE = sig
	val execute : unit -> unit
end


structure PArrayPair : EXECUTABLE = struct

fun assertPairsOrd (pairs, pairs',
					ord : order, msg : string) =
	let
		val comp = Int.compare
	in
		Testing.assertOrd (PArrayPair.compare (comp, comp), ord,
						   pairs, pairs', msg)
	end

fun assertPairsEq (pairs : PArrayPair.t, pairs' : PArrayPair.t,
					  msg : string) =
	assertPairsOrd (pairs, pairs', EQUAL, msg)
	(* Testing.assertEq (ParrayPair.compareEq (Int.compare, Int.compare), *)
	(* 				  pairs, pairs', msg) *)

val pairOfOnes = (1, 1)
val pairOfTwos = (2, 2)
val parrayOfPairsOfOnes = [| pairOfOnes | x in [| 0 to 10 |] |]
val parrayPairOfOnes = PArrayPair.fromPairPArray parrayOfPairsOfOnes

fun testPArrayPairCompare (value : int, value' : int) =
	let
		val LENGTH = 10
		val toMap = [| 0 to LENGTH |]
		val pairs = PArrayPair.fromPairPArray ([| (value, value) | x in toMap |])
		val pairs' = PArrayPair.fromPairPArray [| (value', value') | x in toMap |]
		val expected = Int.compare (value, value')
		val msg = String.concat ["testPArrayCompareEq: ",
								 Int.toString value, ", ",
								 Int.toString value', "\n "]
	in
		assertPairsOrd (pairs, pairs', expected, msg)
end


fun execute () = let
	val curr_app = fn x => app x [1, 2, 3, 4, 5]
in
	(
	  (app testPArrayPairCompare [(1, 1), (2, 2), (5, 5),
									(1, 2), (2, 1), (5, 1),
									(1, 5)]);
	  (print "PARRAY_PAIR PASSED\n")
	)
end
end


(* point.sml *)
structure PointUnitTest : EXECUTABLE = struct
(* this gives me "undefined type t"? this seems like a bug *)
(* fun assertPointEq (p1 : Point.t, p2 : Point.t, msg : string)  = *)
(* why am i getting "redundant match" on the .mlb file?  *)
fun assertPointEq (p1, p2, msg : string)  =
	Testing.assertEq (Point.compare, p1, p2, msg)

fun testPointCompare nFeatures =
	assertPointEq (Point.Point(nFeatures), Point.Point(nFeatures),
				   "testPointCompare")

(* old tests left in this format *)
(* fun testPointConstructor nFeatures = *)
(* 	assertEq (compare, *)
(* 			  (Point nFeatures), *)
(* 			  pointFromList (List.tabulate (nFeatures, fn x => 0.0)), *)
(* 			  "testPointConstructor") *)

(* fun testPointFromList () = *)
(* 	let *)
(* 		val p = pointFromList [1.0, 2.0, 3.0] *)
(* 	in *)
(* 		assertPointEq (p, *)
(* 					   pointFromList (pointToList p), *)
(* 					   "testPointFromList ") *)
(* 	end *)


(* fun testFeatureZip () = *)
(* 	let *)
(* 		val p = featureListToPoints *)
(* 					[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]] *)
(* 	in *)
(* 	assertPointEq (hd p, *)
(* 				   hd (featureListToPoints (pointsToFeatureList p)), *)
(* 				   "testFeatureZip ") *)
(* 	end *)

(* fun testFeatureAdd () = *)
(* 	let *)
(* 		val ident = pointFromList [0.0, 0.0, 0.0] *)
(* 		val p = pointFromList [1.0, 1.0, 1.0] *)
(* 		val p' = pointFromList [2.0, 2.0, 2.0] *)
(* 	in *)
(* 		assertPointEq (p', *)
(* 					   add (add (p, p), ident), *)
(* 					   "testFeatureAdd ") *)
(* 	end *)


(* fun testMapOnFeatures (n : int) = *)
(* 	let *)
(* 		val mul = fn (x : real) => x * Real.fromInt(n) *)
(* 		val l = [1.0, 1.0, 1.0] *)
(* 		val p = pointFromList l *)
(* 		val p' = pointFromList (map mul l) *)
(* 	in *)
(* 		assertPointEq (p', *)
(* 					   mapOnFeatures (mul, p), *)
(* 					   "testMapOnFeatures ") *)
(* 	end *)


(* fun testGetNumFeatures (nFeatures) = *)
(* 	assert ((getNumFeatures (Point nFeatures) = nFeatures), *)
(* 			"testGetNumFeatures ") *)

(* end *)

fun execute () = let
	val curr_app = fn x => app x [1, 2, 3, 4, 5]
in
	(
	  (curr_app testPointCompare);
	  (*   (curr_app TestPoint.testPointConstructor); *)
	  (*   TestPoint.testPointFromList (); *)
	  (*   TestPoint.testFeatureZip (); *)
	  (*   TestPoint.testFeatureAdd (); *)
	  (*   (curr_app TestPoint.testMapOnFeatures); *)
	  (*   (curr_app TestPoint.testGetNumFeatures); *)
	  (print "POINT PASSED\n")
	)
end

end

(* point.sml, ClusterCenters *)
(* functor ClusterCenterUnitTest (structure C : CLUSTER_CENTER *)
(* 							   structure T : TYPE_TESTING *)
(* 							  sharing type C.t = T.t) = struct *)
(* 		structure P = C.P *)
(* 		open C *)

(* 		val identPoint = P.Point 3 *)
(* 		val identCluster = fromPoint identPoint *)

(* 		val pointOne = P.pointFromList [1.0, 1.0, 1.0] *)
(* 		val clusterOne = fromPoint pointOne *)

(* 		val pointTwo = P.pointFromList [2.0, 2.0, 2.0] *)
(* 		val clusterTwo = fromPoint pointTwo *)

(* 		fun testClusterCenterConstructor (nFeatures) = *)
(* 			let *)
(* 				val c = ClusterCenter (nFeatures) *)
(* 				val c' = fromPoint (P.Point nFeatures) *)
(* 			in *)
(* 				T.assertTEq (c, c', "testClusterCenterConstructor ") *)
(* 			end *)

(* 		fun testGetPoint () = *)
(* 			let *)
(* 				val test = *)
(* 				 fn (c : t, p : P.t) => *)
(* 					T.assertEq (P.compare, (getPoint c), p, "testGetPoint ") *)
(* 			in *)
(* 				app test [(identCluster, identPoint), *)
(* 						  (clusterOne, pointOne), *)
(* 						  (clusterTwo, pointTwo)] *)
(* 			end *)

(* 		fun testAdd () = *)
(* 			let *)
(* 				val c = (C.add (identPoint, (C.add (pointOne, clusterOne)))) *)
(* 			in *)
(* 				T.assertTEq (c,	clusterTwo, *)
(* 						"testAdd ") *)
(* 			end *)


(* 		fun testGetSize n = *)
(* 			let *)
(* 				fun accum n = *)
(* 					foldr add identCluster (List.tabulate (n, fn x => pointOne)) *)
(* 			in *)
(* 				T.assert (n = (getSize (accum n)), *)
(* 						"testGetSize ") *)
(* 			end *)

(* 		fun testResetSize (n) = *)
(* 			let *)
(* 				val c = resetSize (foldr add identCluster (List.tabulate (n, fn x=>pointOne))) *)
(* 			in *)
(* 				(T.assertTEq (c, clusterOne, "testResetSize features "); *)
(* 				 T.assert (0 = (getSize c), "testResetSize size ")) *)
(* 			end *)

(* end *)


(* structure TestingClusterCenters = TypeTesting (structure Comp = ClusterCenter) *)

(* structure TestClusterCenters = *)
(* ClusterCenterUnitTest *)
(* 	(structure C = ClusterCenter *)
(* 	 structure T = TestingClusterCenters) *)



(* val _ = let *)
(* 	open TestClusterCenters *)
(* 	val curr_app = fn x => app x [1, 2, 3, 4, 5] *)
(* in *)
(* 	( *)
(* 	  (curr_app testClusterCenterConstructor); *)
(* 	  testGetPoint (); *)
(* 	  testAdd (); *)
(* 	  (curr_app testGetSize); *)
(* 	  (curr_app testResetSize); *)
(* 	  (print "CLUSTER CENTERS PASSED\n") *)
(* 	) *)
(* end *)



(* (* unit tests -- commonUtil.sml*) *)
(* functor CommonUtilTest (structure COM : COMMON_UTIL *)
(* 						structure T: TESTING) = struct *)
(* 		open COM *)

(* 		val identPoint = Point.Point 1 *)
(* 		val identCluster = ClusterCenter.fromPoint identPoint *)

(* 		val pointOne = Point.pointFromList [1.0] *)
(* 		val clusterOne = ClusterCenter.fromPoint pointOne *)

(* 		val pointTwo = Point.pointFromList [2.0] *)
(* 		val clusterTwo = ClusterCenter.fromPoint pointTwo *)


(* 		val clusters = Array.fromList([identCluster, clusterOne, clusterTwo]) *)

(* 		(* note that euclidDist returns distance squared *) *)
(* 		fun testEuclidDist () = *)
(* 			let *)
(* 				val msg = "testEuclidDist" *)
(* 				fun test (x, y) = *)
(* 					T.assertEq(Real.compare, x, y, msg) *)
(* 			in *)
(* 				( *)
(* 				  test(0.0, euclidDist(identPoint, identPoint)); *)
(* 				  test(1.0, euclidDist(identPoint, pointOne)); *)
(* 				  test(4.0, euclidDist(identPoint, pointTwo)); *)
(* 				  test(0.0, euclidDist(pointOne, pointOne)); *)
(* 				  test(0.0, euclidDist(pointTwo, pointTwo)) *)
(* 				) *)
(* 			end *)

(* 		fun testFindNearestPoint () = *)
(* 			let *)
(* 				val msg = "findNearestPoint" *)
(* 				val f = fn x => findNearestPoint (x, clusters) *)
(* 				val test = fn x => T.assert (x, msg) *)
(* 			in *)
(* 				( *)
(* 				  test(0 = (f identPoint)); *)
(* 				  test(1 = (f pointOne)); *)
(* 				  test(2 = (f pointTwo)) *)
(* 				) *)
(* 			end *)
(* 		end *)

(* structure TestCommonUtil = CommonUtilTest(structure COM = CommonUtil *)
(* 										  structure C = ClusterCenter *)
(* 										  structure T = Testing) *)

(* val _ = let *)
(* 	open TestCommonUtil 		(* TODO: can this be done on one line? *) *)
(* in *)
(* 	( *)
(* 	  testEuclidDist(); *)
(* 	  testFindNearestPoint(); *)
(* 	  print "COMMON UTIL PASSED\n" *)
(* 	) *)
(* end *)


(* functor NormalUnitTest (structure N : NORMAL *)
(* 						structure T : TESTING) = struct *)
(* 		open N *)

(* 		fun comparePointLists (p1s, p2s) = *)
(* 			let *)
(* 				val comp = *)
(* 					ListPair.map *)
(* 						Point.compare *)
(* 						(p1s, p2s) *)
(* 				fun check ([]) = EQUAL *)
(* 				  | check (x::xs) = *)
(* 					if x = EQUAL then check(xs) else x *)
(* 			in *)
(* 				check comp *)
(* 			end *)

(* 		fun compareClusterVectors (c1s, c2s) = *)
(* 			let *)
(* 				fun toPointList cs = *)
(* 					map ClusterCenter.getPoint (arrayToList c1s) *)
(* 			in *)
(* 				comparePointLists (toPointList c1s, toPointList c2s) *)
(* 			end *)



(* 		val vecOfThree = fn x : 'a => Array.tabulate (3, fn y => x) *)
(* 		val listOfThree = arrayToList o vecOfThree *)

(* 		val identPoint = Point.Point 1 *)
(* 		val identCluster = ClusterCenter.fromPoint identPoint *)

(* 		val pointOne = Point.pointFromList [1.0] *)
(* 		val clusterOne = ClusterCenter.fromPoint pointOne *)

(* 		val pointTwo = Point.pointFromList [2.0] *)
(* 		val clusterTwo = ClusterCenter.fromPoint pointTwo *)

(* 		val identClusters = Array.tabulate (3, fn x => identCluster) *)
(* 		val clusterOnes = vecOfThree clusterOne *)
(* 		val clusterTwos = vecOfThree clusterTwo *)

(* 		val identPoints = List.tabulate (3, fn x => identPoint) *)
(* 		val pointOnes = [pointOne, pointOne, pointOne] *)
(* 		val pointTwos = List.tabulate (3, fn x => pointTwo) *)

(* 		val clusters = Array.fromList ([identCluster, clusterOne, clusterTwo]) *)
(* 		val clusters' = Array.fromList ([clusterOne, identCluster, identCluster]) *)
(* 		val clusters'' = Array.fromList ([clusterTwo, identCluster, identCluster]) *)

(* 		val points = [pointTwo, pointOne, identPoint] *)

(* 		fun testWork() = *)
(* 			let *)
(* 				fun test x = *)
(* 					fn (y, z) => *)
(* 					   T.assertEq(compareClusterVectors, *)
(* 								  x, *)
(* 								  work(y, z), *)
(* 								 "testWork") *)
(* 			in *)
(* 				( *)
(* 				  (test identClusters (identPoints, identClusters)); *)
(* 				  (test clusters (identPoints, clusters)); *)
(* 				  (test clusters' (pointOnes, identClusters)); *)
(* 				  (test clusters'' (pointTwos, identClusters)) *)
(* 				) *)
(* 			end *)


(* 		fun testInitializeClusters () = *)
(* 			let *)
(* 				fun test x = *)
(* 					fn (ps, rand, debug) => *)
(* 					   T.assertEq(compareClusterVectors, *)
(* 								  x, initializeClusterCenters (ps, rand, 3, debug), *)
(* 								  "testInitializeClusters") *)
(* 				fun default (ps, debug) = (ps, Random.rand(0, 0), debug) *)
(* 			in *)
(* 				( *)
(* 				  (test identClusters (identPoints, Random.rand(0, 0), false)); *)
(* 				  (test identClusters (identPoints, Random.rand(0, 0), true)); *)
(* 				  (test clusterOnes (default (pointOnes, true))); *)
(* 				  (test clusterTwos (default (pointTwos, false))); *)
(* 				  (test clusters, (default (points, true))) *)
(* 				) *)
(* 			end *)

(* 		fun testExecute () = *)
(* 			let *)
(* 				fun test x = *)
(* 					fn (ps, debug) => *)
(* 					   T.assertEq *)
(* 						   (comparePointLists, *)
(* 							x, *)
(* 							execute(identPoints, 3, 1.0, *)
(* 									Random.rand(0, 0), debug), *)
(* 							"testExecute") *)
(* 			in *)
(* 				( *)
(* 				  (test identPoints (identPoints, false)); *)
(* 				  (test identPoints (identPoints, true)) *)
(* 				) *)
(* 			end *)


(* 		end *)


(* structure TestNormal = NormalUnitTest(structure N = Normal *)
(* 									  structure T = Testing) *)

(* val _ = *)
(* 	let *)
(* 		open TestNormal *)
(* 	in *)
(* 		( *)
(* 		  testWork(); *)
(* 		  testInitializeClusters(); *)
(* 		  testExecute(); *)
(* 		  print "TEST NORMAL PASSED\n" *)
(* 		) *)
(* end *)


(* (* unit tests --  kmeans  *) *)
(* functor ParserUnitTest (P : PARSER) = *)
(* 	struct *)
(* 	open P *)

(* 	val testLine = "1 1.0 2.0 3.0 4.0" *)

(* 	fun printAns (points) = *)
(* 	    (print "------\n"; *)
(* 	     app Point.printPoint points) *)


(* 	fun testLineToPoint () = *)
(* 	    printAns [lineToPoint testLine] *)

(* 	fun testFileToPoints () = *)
(* 	    printAns (fileToPoints "color100") *)

(* 	end *)


(* (* structure ParserTest = ParserUnitTest (Parser) *) *)
(* (* val _ = ParserTest.testLineToPoint () *) *)
(* (* val _ = ParserTest.testFileToPoints ()        *) *)


(* functor KMeansUnitTest(K : KMEANS) = struct *)
(* 	open K *)
(* 	fun testKMeansSmall () = *)
(* 	    KMeans("color100", 1, 1, 1, 1.0, true) *)

(* 	fun testKMeansLarge () = *)
(* 	    KMeans("color100", 1, 10, 1, 1.0, true) *)
(* 	end *)

signature MAIN = sig
	val main : unit -> unit
end


structure Main : MAIN = struct

	   (* fun execute executableStructure : EXECUTABLE = *)
	   (* 	   executableStructure.execute() *)

	   fun main () = (* let *)
	   (* 	   val toTest = [PointUnitTest] *)
	   (* in *)
	   (* 	   app execute toTest *)
	   (* end *)
		   (
			 PointUnitTest.execute()
		   )

end

val _ = Main.main()
