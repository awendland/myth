#use "nat.decls"

let nat_eq : nat -> nat -> bool |>
{
  0 => ( 0 => True
       | 1 => False )
| 1 => ( 0 => False
       | 1 => True
       | 2 => False )
} = ?
