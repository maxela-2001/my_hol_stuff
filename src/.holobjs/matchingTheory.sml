structure matchingTheory :> matchingTheory =
struct
  
  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading matchingTheory ... "
    else ()
  
  open Type Term Thm
  local open fsgraphTheory in end;
  
  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "matching"
        (holpathdb.subst_pathvars "/Users/ziyiguo/my_hol_stuff/src/matchingTheory.dat")
    fun find s = HOLdict.find (thydata,s)
  end
  
  
  
val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "matching"

val matching_grammars = valOf (Parse.grammarDB {thyname = "matching"})
end
