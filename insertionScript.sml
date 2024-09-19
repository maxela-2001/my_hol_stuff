open HolKernel Parse boolLib bossLib;

val _ = new_theory "insertion";




fun qsort cmp (ls : 'a list) =
    case ls of
[] => []
| x::xs => qsort cmp (List.filter (fn a => cmp (a,x)) xs) @ [x] @ qsort cmp (List.filter (fn a => not (cmp (a,x))) xs);

local
fun insert1 cmp x xs 
  case xs of
    [] => [x]
  | y::ys => if cmp (x,y) then x::xs else y::(insert1 cmp x ys)
in
fun insert_sort cmp ls =
  case ls of
    [] => []
  | x::xs => insert1 cmp x (insert_sort cmp xs)

end

Definition insert1_def:
  insert1 cmp x [] = [x] ∧
  insert1 cmp x (y::ys) = if (cmp x y) then x::y::ys else y::(insert1 cmp x ys)
End



Definition insert_sort_def:
  insert_sort cmp [] = [] ∧
  insert_sort cmp (x::xs) = insert1 cmp x (insert_sort cmp xs)
End



Theorem insert1_length:
  LENGTH (insert1 cmp x xs) = LENGTH xs + 1
Proof
  Induct_on ‘xs’
  >- (simp[insert1_def])
  >- (simp[insert1_def] >> rw[])
QED
        
Theorem insert_sort_length:
  LENGTH (insert_sort cmp ls) = LENGTH ls
Proof
  Induct_on ‘ls’
  >- (simp[insert_sort_def])
  >- (simp[insert_sort_def] >> simp[insert1_length])
QED
        
val _ = export_theory();

