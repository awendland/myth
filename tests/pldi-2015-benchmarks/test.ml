type nat =
  | O
  | S of nat

type bool =
  | True
  | False

type list =
  | Nil
  | Cons of nat * list

let list_nth : list -> nat -> nat =
  let rec f1 (l1:list) : nat -> nat =
    fun (n1:nat) ->
      match l1 with
        | Nil -> O
        | Cons (n2, l2) -> (match f1 l2 O with
                              | O -> (match n1 with
                                        | O -> n2
                                        | S (n3) -> O)
                              | S (n3) -> (match n1 with
                                             | O -> n2
                                             | S (n4) -> S (n3)))
  in
    f1
;;





let zero : nat = O;;
let one : nat = S O;;
let two : nat = S one;;
let three : nat = S two;;
let a : list = Cons (one, Cons (zero, Cons(three, Nil)));;
