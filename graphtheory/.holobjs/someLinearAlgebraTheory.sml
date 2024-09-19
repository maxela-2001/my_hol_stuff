structure someLinearAlgebraTheory :> someLinearAlgebraTheory =
struct
  
  val _ = if !Globals.print_thy_loads
    then TextIO.print "Loading someLinearAlgebraTheory ... "
    else ()
  
  open Type Term Thm
  local open genericGraphTheory EnumType in end;
  
  structure TDB = struct
    val thydata = 
      TheoryReader.load_thydata "someLinearAlgebra"
        (holpathdb.subst_pathvars "/Users/ziyiguo/my_hol_stuff/graphtheory/someLinearAlgebraTheory.dat")
    fun find s = HOLdict.find (thydata,s)
  end
  
  fun op Graph_size_def _ = ()
  val op Graph_size_def = TDB.find "Graph_size_def"
  fun op Graph_TY_DEF _ = () val op Graph_TY_DEF = TDB.find "Graph_TY_DEF"
  fun op Graph_CASE _ = () val op Graph_CASE = TDB.find "Graph_CASE"
  fun op Graph_BIJ _ = () val op Graph_BIJ = TDB.find "Graph_BIJ"
  
  fun op num2Graph_thm _ = ()
  val op num2Graph_thm = TDB.find "num2Graph_thm"
  fun op num2Graph_ONTO _ = ()
  val op num2Graph_ONTO = TDB.find "num2Graph_ONTO"
  fun op num2Graph_Graph2num _ = ()
  val op num2Graph_Graph2num = TDB.find "num2Graph_Graph2num"
  fun op num2Graph_11 _ = () val op num2Graph_11 = TDB.find "num2Graph_11"
  fun op datatype_Graph _ = ()
  val op datatype_Graph = TDB.find "datatype_Graph"
  fun op Graph_nchotomy _ = ()
  val op Graph_nchotomy = TDB.find "Graph_nchotomy"
  fun op Graph_induction _ = ()
  val op Graph_induction = TDB.find "Graph_induction"
  fun op Graph_case_eq _ = ()
  val op Graph_case_eq = TDB.find "Graph_case_eq"
  fun op Graph_case_def _ = ()
  val op Graph_case_def = TDB.find "Graph_case_def"
  fun op Graph_case_cong _ = ()
  val op Graph_case_cong = TDB.find "Graph_case_cong"
  fun op Graph_EQ_Graph _ = ()
  val op Graph_EQ_Graph = TDB.find "Graph_EQ_Graph"
  fun op Graph_Axiom _ = () val op Graph_Axiom = TDB.find "Graph_Axiom"
  fun op Graph2num_thm _ = ()
  val op Graph2num_thm = TDB.find "Graph2num_thm"
  fun op Graph2num_num2Graph _ = ()
  val op Graph2num_num2Graph = TDB.find "Graph2num_num2Graph"
  fun op Graph2num_ONTO _ = ()
  val op Graph2num_ONTO = TDB.find "Graph2num_ONTO"
  fun op Graph2num_11 _ = () val op Graph2num_11 = TDB.find "Graph2num_11"
  
  
val _ = if !Globals.print_thy_loads then TextIO.print "done\n" else ()
val _ = Theory.load_complete "someLinearAlgebra"

val someLinearAlgebra_grammars = valOf (Parse.grammarDB {thyname = "someLinearAlgebra"})
end
