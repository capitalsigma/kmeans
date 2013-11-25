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


signature COMPARABLE = sig
	type t
	val compare : t * t -> order
end

signature TYPE_TESTING = sig
	(* structure Comp : COMPARABLE *)
	type t

	include TESTING

	val assertTEq : t * t * string -> unit
end



functor TypeTesting (structure Comp : COMPARABLE) :> 
		TYPE_TESTING where type t = Comp.t = struct
	open Testing
	type t = Comp.t

	fun assertTEq (obj1, obj2, msg) = 
		assertEq (Comp.compare, obj1, obj2, msg)
					  
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
	(app TestPoint.testPointConstructor [1, 2, 3, 4, 5]);
	TestPoint.testPointFromList (); 
	TestPoint.testFeatureZip ();
	TestPoint.testFeatureAdd ();
	TestPoint.testMapOnFeatures ();
	(app TestPoint.testGetNumFeatures [1, 2, 3, 4, 5])
)	 


(* point.sml, ClusterCenters *)
functor ClusterCenterUnitTest (structure C : CLUSTER_CENTER
							   structure T : TYPE_TESTING
							  sharing type C.t = T.t) = struct
		structure P = C.P
		open C

		(* how do you do this? *)
		val identPoint = P.Point 3
		val identCluster = fromPoint identPoint

		val pointOne = P.pointFromList [1.0, 1.0, 1.0]
		val clusterOne = fromPoint pointOne

		val pointTwo = P.pointFromList [2.0, 2.0, 2.0]
		val clusterTwo = fromPoint pointTwo

		fun testClusterCenterConstructor (nFeatures) = 
			let 
				val c = ClusterCenter (nFeatures)
				val c' = fromPoint (P.Point nFeatures)
			in 
				T.assertTEq (c, c', "testClusterCenterConstructor fail")
			end

		fun testGetPoint () = 
			let 
				val test = 
				 fn (c : t, p : P.t) => 
					T.assertEq (P.compare, (getPoint c), p, "testGetPoint fail")
			in
				app test [(identCluster, identPoint),
						  (clusterOne, pointOne),
						  (clusterTwo, pointTwo)]
			end

		fun testAdd () = 
			let 
				val c = (C.add (identPoint, (C.add (pointOne, clusterOne))))
			in
				T.assertTEq (c,	clusterTwo,
						"testAdd fail")
			end


		fun testGetSize n = 
			let
				fun accum n = 
					foldr add identCluster (List.tabulate (n, fn x => pointOne))
			in
				T.assert (n = (getSize (accum n)),
						"testGetSize fail")
			end

		fun testResetSize () = 
			let
				val c = resetSize (add (pointOne, clusterOne))
				val _ = P.printPoint (getPoint c)
				val _ = print (Int.toString(getSize c))
			in
				(T.assertTEq (c, clusterOne, "testResetSize features fail");
				 T.assert (0 = (getSize c), "testResetSize size fail"))
			end
	
end 


structure TestingClusterCenters = TypeTesting (structure Comp = ClusterCenter)

structure TestClusterCenters = 
ClusterCenterUnitTest 
	(structure C = ClusterCenter
	 structure T = TestingClusterCenters)



val _ = let
	open TestClusterCenters 
in
	(app testClusterCenterConstructor [1, 2, 3, 4]);
	testGetPoint ();
	testAdd ();
	(app testGetSize [1, 2, 3, 4, 5, 6]);
	testResetSize ()
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
