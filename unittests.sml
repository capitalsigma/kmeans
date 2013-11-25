CM.make "./kmeans.cm";

signature TESTING = sig
	val assert : bool * string -> unit
	val assertEq : ('a * 'a -> order) * 'a * 'a * string -> unit

end

structure Testing :> TESTING = struct

fun pass () =
	print "pass\n"


fun assert (b : bool, msg : string) = 
	if b then pass () else raise Fail(msg)					

fun assertEq (eqFunc : ('a * 'a -> order), x : 'a, y : 'a, msg) = 
	if  eqFunc (x, y) = EQUAL then 
		pass ()
	else
		raise Fail(msg)
end


funsig TYPETESTING (structure T) = sig
	(* is this a bad place to have tight coupling? *)
	open Testing
	val assertTEq : T.t * T.t * string -> unit
end


functor TypeTesting (structure TYPE) :> TYPETESTING = struct
	open Testing

	fun assertTEq (obj1, obj2, msg) = 
		assertEq (TYPE.compare, obj1, obj2, msg)
					  
end

						 
(* point.sml *)
functor PointUnitTest (structure P : POINT
					   structure T : TESTING) = struct 
	open P
	open T

	val assertPointEq  = 
		fn (p1 : t, p2 : t, msg : string) => 
		   assertEq (compare, p1, p2, msg)
					 

	(* old tests left in this format *)
	fun testPointConstructor nFeatures = 
		assertEq (compare, 
				  (Point nFeatures), 
				  pointFromList (List.tabulate (nFeatures, fn x => 0.0)),
				 "testPointConstructorFail")
				 
	fun testPointFromList () =
		let 
			val p = pointFromList [1.0, 2.0, 3.0]
		in 
			assertPointEq (p,
						   pointFromList (pointToList p),
						   "testPointFromList fail")
		end
	

	fun testFeatureZip () = 
		let 
			val p = featureListToPoints 
						[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0]]
		in
		assertPointEq (hd p,
					   hd (featureListToPoints (pointsToFeatureList p)),
					   "testFeatureZip fail")
		end
					   
	fun testFeatureAdd () =
		let 
			val ident = pointFromList [0.0, 0.0, 0.0]
			val p = pointFromList [1.0, 1.0, 1.0]
			val p' = pointFromList [2.0, 2.0, 2.0]
		in
			assertPointEq (p',
						   add (add (p, p), ident),
						   "testFeatureAdd fail")
		end


	fun testMapOnFeatures () = 
		let 
			val p = pointFromList [1.0, 1.0, 1.0]
			val p' = pointFromList [5.0, 5.0, 5.0]
		in 
			assertPointEq (p',
						   mapOnFeatures ((fn x => x * 5.0), p),
						   "testMapOnFeatures fail")
		end


	fun testGetNumFeatures (nFeatures) =
		assert ((getNumFeatures (Point nFeatures) = nFeatures),
				"testGetNumFeatures fail")
						
	end


(* TOOD: unit tests for ClusterCenters *)

(* TODO: probably an error should get raised for 0-feature points *)
structure TestPoint = PointUnitTest (structure P = Point 
									 structure T = Testing)

val _ = (
	(app (fn x => TestPoint.testPointConstructor x) [1, 2, 3, 4, 5]);
	TestPoint.testPointFromList (); 
	TestPoint.testFeatureZip ();
	TestPoint.testFeatureAdd ();
	TestPoint.testMapOnFeatures ();
	(app (fn x => TestPoint.testGetNumFeatures x) [1, 2, 3, 4, 5])
)	 


(* point.sml, ClusterCenters *)
functor TestClusterCenters (structure C : CLUSTERCENTER
							structure T : TYPETESTING) = struct
		open C
		open T

		fun testClusterCenterConstructur (nFeatures) = 
			let 
				val c = ClusterCenter (nFeatures)
				val c' = ClusterCenter.fromPoint (Point nFeatures)
			in 
				assert

end 

					 

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
