CM.make "./kmeans.cm";

fun assert(b : bool, msg : string) = 
	if b then () else raise Fail(msg)

											 
(* point.sml *)
functor PointUnitTest (P : POINT) = 
	struct 
	open P

	(* old tests left in this format *)
	val p = Point.Point(5)
	val _ = Point.printPoint(p)
	val p2 = Point.pointFromList([1.0, 2.0, 3.0, 4.0])
	val _ = Point.printPoint(p2)
	val p4 = Point.pointToList(p2)

	val listToZip = [[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]
	val p3 = Point.featureListToPoints listToZip
	val _ = app Point.printPoint p3

	val featureList = Point.pointsToFeatureList p3

	val p6 = Point.pointFromList [6.0, 7.0, 8.0, 9.0]
	val p7 = Point.add (p6, p2)
	val _ = Point.printPoint p7

	(* val s1 = Point.getSize p2 *)
	(* val s2 = Point.getSize (Point.incSize p2) *)
	(* val _ = Point.printPoint (Point.incSize p2) *)

	(* val s3 = Point.resetSize (Point.incSize (Point.incSize p2)) *)

	fun printAns (points) =	   
	    app (print "------\n";Point.printPoint) points

	(* fun testAddAndSize () = *)
	(*     let *)
	(* 	val p2' = Point.incSize (Point.incSize p2) *)
	(*     in *)
	(* 	printAns [Point.add (p2, p2), Point.add(p2, p2'), *)
	(* 		  Point.add (p2', p2')] *)
	(*     end *)

	(* fun testFeaturesRepr () =  *)
	(*     print (featuresRepr p2) *)

	end

(* TOOD: unit tests for ClusterCenters *)


structure TestPoint = PointUnitTest(Point)

(* val _ = TestPoint.testAddAndSize () *)
(* val _ = TestPoint.testFeaturesRepr () *)



(* unit tests -- commonUtil.sml*)
functor CommonUtilTest() = struct
		val [p1, p2] = map Point.pointFromList [[1.0, 1.0], [0.0, 0.0]]
		val eucDist = CommonUtil.euclidDist(p1, p2)
										   
		val p3 = Point.pointFromList [2.0, 1.0]
		(* TODO: is Vector.map implemented in terms of lists? *)

		(* FIXME FIXME FIXME *)
		(* val clusterCenters = Vector.fromList (map ClusterCenter.fromPoint [p1, p2]) *)
		(* val nearest = CommonUtil.findNearestPoint(p3, clusterCenters) *)
		end

structure TestCommonUtil = CommonUtilTest()


(* unit tests -- cluster.sml*)
functor ClusterTest(C : CLUSTER) = struct
		val listOfReals = [[1.0, 1.0, 1.0],
						   [2.0, 2.0, 2.0],
						   [1.0, 2.0, 3.0]]

		val extractedMoments = map Cluster.extractMoments listOfReals
								   
		val pointList = map Point.pointFromList 
							[[1.0, 1.0, 1.0],
							 [2.0, 2.0, 2.0],
							 [1.0, 2.0, 3.0]]
		
		val normalizedPoints = Cluster.zscoreTransform (pointList, true)
		val _ = app Point.printPoint normalizedPoints
		end

structure testCluster = ClusterTest(Cluster)




(* unit tests  -- normal.sml *)
functor NormalUnitTest (N : NORMAL) =
	struct
	open N

	val realList = [[1.0, 1.0], [2.0, 2.0], [3.0, 3.0], [4.0, 4.0]]
	val onePoint = Point.pointFromList [1.5, 1.5]
	val dataSet = map Point.pointFromList realList				
	val blankDataSet = map (fn x => Point.Point 2) [1, 2, 3]
	val simpleDataSet = map Point.pointFromList [[1.0], [1.0], [1.0], [1.0]]
			
	fun printOut (points) = 
	     app (print "-----\n";Point.printPoint) points
	  
	(* fun testAccumulate () =  *)
	(*     let *)
	(* 	fun test (i) =  *)
	(* 	     printOut (accumulate (i, onePoint, blankDataSet)) *)
	(*     in *)
	(* 	map test [0, 1, 2] *)
	(*     end *)

	(* fun testAcc2 () =  *)
	(*     let *)
	(* 	fun test (0, acc) = acc *)
	(* 	  | test (i, acc) = test(i-1, accumulate(0, onePoint, acc)) *)
	(*     in *)
	(* 	test (10, blankDataSet) *)
	(*     end *)
	
	(* FIXME *)
	(* fun testWork () =  *)
	(*     printOut (work (dataSet, 1, #[ClusterCenter.ClusterCenter 2])) *)

	    

	fun testExecute () = 
	    printOut (Normal.execute(dataSet, 
				     2,
				     1.0,
				     Random.rand(0, 0),
					 true))
		     
	fun testExecSimple () = 
	    printOut (Normal.execute(simpleDataSet, 1, 1.0, Random.rand(0, 0), true))

	end



structure TestNormal = NormalUnitTest(Normal);


(* val _ = TestNormal.testAccumulate () *)
(* val _ = TestNormal.testWork () *)
val _ = TestNormal.testExecSimple ()
(* val _ = TestNormal.testAcc2 () *)
val _ = TestNormal.testExecute ()



(* unit tests --  kmeans  *)


functor ParserUnitTest (P : PARSER) = 
	struct
	open P

	val testLine = "1 1.0 2.0 3.0 4.0"
			   
	fun printAns (points) =	   
	    (print "------\n";
	     app Point.printPoint points)


	fun testLineToPoint () = 
	    printAns [lineToPoint testLine]
		     
	fun testFileToPoints () = 
	    printAns (fileToPoints "color100")

	end


(* structure ParserTest = ParserUnitTest (Parser) *)
(* val _ = ParserTest.testLineToPoint () *)
(* val _ = ParserTest.testFileToPoints ()        *)


functor KMeansUnitTest(K : KMEANS) = struct
	open K
	fun testKMeansSmall () = 
	    KMeans("color100", 1, 1, 1, 1.0, true)

	fun testKMeansLarge () = 
	    KMeans("color100", 1, 10, 1, 1.0, true)
	end

structure TestKMeans = KMeansUnitTest(KMeans)
val _ = TestKMeans.testKMeansSmall ()

val _ = app Point.printPointList (TestKMeans.testKMeansLarge())

(* val _ = main(["color100", "2", "100", " *)
(* TODO: what is this ?.ClusterCenter.t stuff? *)
