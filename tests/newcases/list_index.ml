type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

type bool =
  | True
  | False

let rec nat_equal (n1 : nat) (n2 :nat) : bool =
  match n1 with
  | O -> (match n2 with
             | O -> True
             | S (m) -> False
           )
  | S (m1) -> ( match n2 with
        | O -> False
        | S (m2) -> (nat_equal m1 m2) )
;;

let list_index : nat -> list -> nat |>
  { 0 => ( [] => 0
         | [0] => 0
         | [3; 0] => 1
         | [2; 3; 0] => 2
         | [1; 2; 3; 0] => 3)
  | 1 => ( [] => 0
         | [2] => 0
         | [1; 2] => 0
         | [4; 1; 2] => 1
         | [3; 4; 1; 2] => 2)} = ?
