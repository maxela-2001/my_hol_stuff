signature someLinearAlgebraTheory =
sig
  type thm = Thm.thm
  
  (*  Definitions  *)
    val Graph_BIJ : thm
    val Graph_CASE : thm
    val Graph_TY_DEF : thm
    val Graph_size_def : thm
  
  (*  Theorems  *)
    val Graph2num_11 : thm
    val Graph2num_ONTO : thm
    val Graph2num_num2Graph : thm
    val Graph2num_thm : thm
    val Graph_Axiom : thm
    val Graph_EQ_Graph : thm
    val Graph_case_cong : thm
    val Graph_case_def : thm
    val Graph_case_eq : thm
    val Graph_induction : thm
    val Graph_nchotomy : thm
    val datatype_Graph : thm
    val num2Graph_11 : thm
    val num2Graph_Graph2num : thm
    val num2Graph_ONTO : thm
    val num2Graph_thm : thm
  
  val someLinearAlgebra_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [genericGraph] Parent theory of "someLinearAlgebra"
   
   [Graph_BIJ]  Definition
      
      ⊢ (∀a. num2Graph (Graph2num a) = a) ∧
        ∀r. (λn. n < 1) r ⇔ Graph2num (num2Graph r) = r
   
   [Graph_CASE]  Definition
      
      ⊢ ∀x v0. (case x of Emp => v0) = (λm. v0) (Graph2num x)
   
   [Graph_TY_DEF]  Definition
      
      ⊢ ∃rep. TYPE_DEFINITION (λn. n < 1) rep
   
   [Graph_size_def]  Definition
      
      ⊢ ∀x. Graph_size x = 0
   
   [Graph2num_11]  Theorem
      
      ⊢ ∀a a'. Graph2num a = Graph2num a' ⇔ a = a'
   
   [Graph2num_ONTO]  Theorem
      
      ⊢ ∀r. r < 1 ⇔ ∃a. r = Graph2num a
   
   [Graph2num_num2Graph]  Theorem
      
      ⊢ ∀r. r < 1 ⇔ Graph2num (num2Graph r) = r
   
   [Graph2num_thm]  Theorem
      
      ⊢ Graph2num Emp = 0
   
   [Graph_Axiom]  Theorem
      
      ⊢ ∀x0. ∃f. f Emp = x0
   
   [Graph_EQ_Graph]  Theorem
      
      ⊢ ∀a a'. a = a' ⇔ Graph2num a = Graph2num a'
   
   [Graph_case_cong]  Theorem
      
      ⊢ ∀M M' v0.
          M = M' ∧ (M' = Emp ⇒ v0 = v0') ⇒
          (case M of Emp => v0) = case M' of Emp => v0'
   
   [Graph_case_def]  Theorem
      
      ⊢ ∀v0. (case Emp of Emp => v0) = v0
   
   [Graph_case_eq]  Theorem
      
      ⊢ (case x of Emp => v0) = v ⇔ x = Emp ∧ v0 = v
   
   [Graph_induction]  Theorem
      
      ⊢ ∀P. P Emp ⇒ ∀a. P a
   
   [Graph_nchotomy]  Theorem
      
      ⊢ ∀a. a = Emp
   
   [datatype_Graph]  Theorem
      
      ⊢ DATATYPE (Graph Emp)
   
   [num2Graph_11]  Theorem
      
      ⊢ ∀r r'. r < 1 ⇒ r' < 1 ⇒ (num2Graph r = num2Graph r' ⇔ r = r')
   
   [num2Graph_Graph2num]  Theorem
      
      ⊢ ∀a. num2Graph (Graph2num a) = a
   
   [num2Graph_ONTO]  Theorem
      
      ⊢ ∀a. ∃r. a = num2Graph r ∧ r < 1
   
   [num2Graph_thm]  Theorem
      
      ⊢ num2Graph 0 = Emp
   
   
*)
end
