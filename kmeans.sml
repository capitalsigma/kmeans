use "point.sml";

signature PARSER = sig
    val lineToPoint : string -> Point.t 

    val fileToPoints : string -> Point.t list
end

structure Parser :> PARSER = struct 

(* string -> Point.t *)
fun lineToPoint (line) = 
    let
	(* input is whitespace delimited *)
	val tokens = String.tokens (fn c => (c = #" ")) line
    in
	(* "tl" here because the first number is a line counter in their  *)
	(* data *)
	Point.pointFromList (map (Option.valOf o Real.fromString) (tl tokens))
    end

(* note that the Java follows the C in doing two passes over the file: one *)
(* to figure out how many point objects to create, and a second to initialize *)
(* them. i've done it with one here *)
fun fileToPoints (path : string) = 
    let
	val fileHandle = TextIO.openIn path
	fun loadFile (fileHandle) = 
	    case TextIO.inputLine fileHandle of
		SOME line => ((lineToPoint line) :: (loadFile fileHandle))
	      | NONE  => []
    in
	(* parseLines (fileHandle, []) *)
	rev (loadFile fileHandle)
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
	    printAns (fileToPoints "color100.txt")

	end



structure ParserTest = ParserUnitTest (Parser)
val _ = ParserTest.testLineToPoint ()
val _ = ParserTest.testFileToPoints ()       


(* note: commandline args vary by compiler *)
(* MLton/general usage = CommandLine.arguments -> string array *)
(*      doesn't include 0th argument *)
(* SML/NJ = SMLofNJ.getArgs() -> string array *)

(* args need to be: file, minClusters, maxClusters, nthreads *)
fun main(fileName, minClusters, maxClusters, nthreads) = 
    ()
	
