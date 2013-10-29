use "point.sml";
use "cluster.sml";

signature PARSER = sig
    val lineToPoint : string -> Point.t 

    val fileToPoints : string -> Point.t list
end

structure Parser :> PARSER = struct 

(* string -> Point.t *)
fun lineToPoint (line) = 
    let
	(* input is whitespace delimited *)
	val linums::features = String.tokens Char.isSpace line
    in
	(* "tl" here because the first number is a line counter in their  *)
	(* data *)
	Point.pointFromList (map (Option.valOf o Real.fromString) features)
    end

(* note that the Java follows the C in doing two passes over the file: one *)
(* to figure out how many point objects to create, and a second to initialize *)
(* them. i've done it with one here *)
fun fileToPoints (path : string) = 
    let
	val fileHandle = TextIO.openIn path
	fun loadFile (fileHandle) = 
	    (case TextIO.inputLine fileHandle of
		 SOME line => ((lineToPoint line) :: (loadFile fileHandle))
	       | NONE  => [])
    in
	(* parseLines (fileHandle, []) *)
	rev (loadFile fileHandle) 
	before TextIO.closeIn fileHandle
    end


end

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

signature KMEANS = sig
    val KMeans : string * int * int * int -> Point.t list list
end

structure KMeans :> KMEANS = struct

fun KMeans (filePath, minClusters : int, maxClusters : int, nThreads) = 
    let 
	val dataSet = Parser.fileToPoints filePath
    in 
	(* we're throwing away nThreads here because we have no use for it *)
	Cluster.execute (dataSet, minClusters, maxClusters, 1.0)
    end

end

(* note: commandline args vary by compiler *)
(* MLton/general usage = CommandLine.arguments -> string array *)
(*      doesn't include 0th argument *)
(* SML/NJ = SMLofNJ.getArgs() -> string array *)

(* args need to be: file, minClusters, maxClusters, nthreads *)
fun main (argv) = 
    (* neither the C nor the Java seem to actually do any comparisons to *)
    (* figure out what the "best" cluster centers are, it looks like it  *)
    (* just always returns maxClusters and the last result it calculated *)
    let
	exception BadArgs
	fun procArgs [filePath, minClusterStr, maxClusterStr, nThreadsStr] =
	    let
		fun toInt x = (Option.valOf o Int.fromString) x
		val [minClusters, maxClusters, nThreads] = 
		    map toInt [minClusterStr, maxClusterStr, nThreadsStr]
	    in
		KMeans.KMeans(filePath, minClusters, maxClusters, nThreads)
	    end
    in
    (case length argv of 
	 4 => (procArgs CommandLine.arguments())
      |   _ => raise BadArgs)
    end

fun printResults points = 
    let
	fun printSpaceDelimited (i, p) = 
	    print (String.concat [i, " ", p])
	fun loop (i, p::ps) = 
	    (PrintSpaceDelimited (i, p);
	     loop(i + 1, ps))
	  | loop (i, []) = 
	    ()
    in
	loop (0, points)
    end
	     
	

val _ = main(CommandLine.arguments())
