type nat =
  | O
  | S of nat

type list =
  | Nil
  | Cons of nat * list

let list_index : nat -> list -> nat =
  fun (n1:nat) ->
    let rec f2 (l1:list) : nat =
      match l1 with
        | Nil -> O
        | Cons (n2, l2) -> (match f2 l2 with
                              | O -> S (O)
                              | S (n3) -> S (S (O)))
    in
      f2
;;

let zero : nat = O;;
let one : nat = S(zero);;
let two : nat = S(one);;
let three : nat = S(two);;
let four : nat = S(three);;
let a:list = Cons (zero, Cons(one, Cons(two, Cons(three, Nil))));;
let b:list = Cons (one, Cons(zero, Cons(three, Nil)));;
