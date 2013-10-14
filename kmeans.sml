structure Parser = struct 
end


(* note: commandline args vary by compiler *)
(* MLton/general usage = CommandLine.arguments -> string array *)
(*      doesn't include 0th argument *)
(* SML/NJ = SMLofNJ.getArgs() -> string array *)

(* args need to be: file, minClusters, maxClusters, nthreads *)
fun main(fileName, minClusters, maxClusters, nthreads) = 
    ()
	


CommandLine.arguments
