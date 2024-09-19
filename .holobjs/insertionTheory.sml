structure insertionTheory :> insertionTheory =
struct
  
  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading insertionTheory ... "
    else ()
  
  open Type Term Thm
  local open indexedListsTheory patternMatchesTheory in end;
  
  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "insertion"
        (holpathdb.subst_pathvars "/Users/ziyiguo/my_hol_stuff/insertionTheory.dat")
    fun find s = HOLdict.find (thydata,s)
  end
  
  fun op insert_sort_def _ = ()
  val op insert_sort_def = TDB.find "insert_sort_def"
  fun op insert1_def _ = () val op insert1_def = TDB.find "insert1_def"
  fun op insert_sort_length _ = ()
  val op insert_sort_length = TDB.find "insert_sort_length"
  fun op insert1_length _ = ()
  val op insert1_length = TDB.find "insert1_length"
  
  
val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "insertion"

val insertion_grammars = valOf (Parse.grammarDB {thyname = "insertion"})
end
