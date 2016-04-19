#use "bool.decls"

let bool_impl : bool -> bool -> bool |>
  { False => True => True
  ; False => False => True
  ; True => True => True
  ; True => False => False} = ?
