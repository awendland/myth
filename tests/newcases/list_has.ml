type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

type bool =
  | True
  | False


let list_has : list -> nat -> bool |>
  { [] => ( 0 => False
          | 1 => False
          | 2 => False)
  | [0] => ( 0 => True
           | 1 => False)
  | [1] => ( 1 => True
           | 0 => False)
  | [0; 1] => ( 0 => True
              | 1 => True)
  | [2] => ( 2 => True
           | 1 => False)
  | [2; 1] => ( 2 => True
              | 1 => True)} = ?
