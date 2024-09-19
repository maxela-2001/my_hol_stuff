open HolKernel Parse boolLib bossLib;

val _ = new_theory "helloGraph";

Type graph[pp] = ``: 'a set # ('a set) set``
Overload V = “FST: 'a graph -> 'a set”
Overload E = “SND: 'a graph -> 'a set set”

Definition graph_def:
  is_graph G ⇔ ∀e. e IN E G ⇒ e SUBSET V G ∧ FINITE e ∧ CARD e = 2
End 
         
Definition some_def:
  is_good (SUC x) = ~is_good x ∧
  is_good 0 = T
End
        
Definition order_def:
  order G = CARD (V G)
End

Definition trivial_graph_def:
  trivial_graph (g: 'a graph) ⇔ g = (∅,∅) 
End

        
Theorem trivial_graph_order_zero:
  ∀g. trivial_graph g ⇒ order g = 0 
Proof
  simp[trivial_graph_def, order_def]
QED
      
        

val _ = export_theory();
