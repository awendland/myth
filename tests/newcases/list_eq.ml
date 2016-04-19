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

let list_eq : list -> list -> bool |>
 {
    [] => ( [] => True
          | [0] => False)
  | [2] => ( [] => False
           | [1] => False
           | [2] => True)
  | [1] => ( [] => False
           | [1] => True
           | [2] => False)
  | [1;0] => ( [] => False
             | [1] => False
             | [2;0] => False
             | [1;0] => True)
  | [2;0] => ( [] => False
             | [1] => False
             | [2;0] => True
             | [1;0] => False)
(*  | [2;1;0] => ( [1;0] => False
               | [2;3;0] => False
               | [2;1;0] => True)
  | [1;3;2;0] => ( [3;2;0] => False
                 | [1;3;2;0] => True)*)} = ?
