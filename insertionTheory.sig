signature insertionTheory =
sig
  type thm = Thm.thm
  
  (*  Definitions  *)
    val insert1_def : thm
    val insert_sort_def : thm
  
  (*  Theorems  *)
    val insert1_length : thm
    val insert_sort_length : thm
  
  val insertion_grammars : type_grammar.grammar * term_grammar.grammar
(*
   [indexedLists] Parent theory of "insertion"
   
   [patternMatches] Parent theory of "insertion"
   
   [insert1_def]  Definition
      
      ⊢ (∀cmp x. insert1 cmp x [] = [x]) ∧
        ∀cmp x y ys.
          insert1 cmp x (y::ys) =
          if cmp x y then x::y::ys else y::insert1 cmp x ys
   
   [insert_sort_def]  Definition
      
      ⊢ (∀cmp. insert_sort cmp [] = []) ∧
        ∀cmp x xs.
          insert_sort cmp (x::xs) = insert1 cmp x (insert_sort cmp xs)
   
   [insert1_length]  Theorem
      
      ⊢ LENGTH (insert1 cmp x xs) = LENGTH xs + 1
   
   [insert_sort_length]  Theorem
      
      ⊢ LENGTH (insert_sort cmp ls) = LENGTH ls
   
   
*)
end
