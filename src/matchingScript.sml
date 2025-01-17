open HolKernel Parse boolLib bossLib;
open fsgraphTheory pred_setTheory;

val _ = new_theory "matching";


Definition matching_def:
  matching (G: fsgraph) M ⇔ (M ⊆ fsgedges G) ∧ (∀e1 e2. e1 ∈ M ∧ e2 ∈ M ∧ e1 ≠ e2 ⇒ DISJOINT e1 e2)
End

Definition matching_of_def:
  matching_of (G: fsgraph) M U
              ⇔ matching G M ∧ U ⊆ nodes G ∧ (∀u. u ∈ U ⇒ (∃e. e ∈ M ∧ u ∈ e))
End

Definition unmatched_def:
  unmatched G M v ⇔ matching G M ∧ ∀e. e ∈ M ⇒ v ∉ e
End
        
Definition vertex_cover_def:
  vertex_cover G U ⇔ U ⊆ nodes G ∧ ∀e. e ∈ fsgedges G ⇒ ∃v. v ∈ U ∧ v ∈ e
End

Definition bipartite_graph_def:
  bipartite (G: fsgraph) ⇔ ∃V1 V2.
  V1 ⊆ nodes G ∧ V2 ⊆ nodes G ∧ V1 ∪ V2 = nodes G ∧ V1 ∩ V2 = ∅ ∧
  ∀e. e ∈ fsgedges G ⇒ ∃v1 v2. v1 ∈ e ∧ v2 ∈ e ∧ v1 ≠ v2 ∧ v1 ∈ V1 ∧ v2 ∈ V2
End


Definition alternating_path_def:
  alternating_path G M P ⇔ bipartite G ∧ matching G M ∧ path P G ∧
                           unmatched G M (HD P)
End

Theorem finite_matching:
  ∀G M. matching G M ⇒ FINITE M
Proof
  rw[matching_def] >> irule SUBSET_FINITE_I >> Q.EXISTS_TAC ‘fsgedges G’ >> rw[]
QED

Theorem max_measure_exists:
  ∀A m. FINITE A ∧ A ≠ ∅ ⇒ ∃a. a ∈ A ∧ ∀b. b ∈ A ⇒ m b ≤ m a
Proof
  Induct_on ‘FINITE’ >> rw[]
QED


Theorem maximal_matching_exists:
  ∀(G: fsgraph). ∃M. matching G M ∧ ∀N. matching G N ⇒ CARD N ≤ CARD M
Proof

QED

(* Konig 1931, page 37*)
Theorem konig_matching_thm:
  ∀G. MAX_SET (IMAGE CARD (matching G)) = MIN_SET (IMAGE CARD (vertex_cover G))
Proof

QED
        
        



    



val _ = export_theory();

