type formula = TRUE | FALSE
             | NOT of formula
             | ANDALSO of formula * formula
             | ORELSE of formula * formula
             | IMPLY of formula * formula
             | LESS of expr * expr
and expr = NUM of int
         | PLUS of expr * expr
         | MINUS of expr * expr;;
let rec eval formula =
  match formula with
  | TRUE -> true
  | FALSE -> false
  | NOT f -> if (eval f) then false else true
  | ANDALSO (f1, f2) -> eval f1 && eval f2
  | ORELSE (f1, f2) -> eval f1 || eval f2
  | IMPLY (f1, f2) -> not (eval f1) || eval f2
  | LESS (e1, e2) -> eval_expr e1 < eval_expr e2
and eval_expr expr =
  match expr with
  | NUM n -> n
  | PLUS (e1, e2) -> eval_expr e1 + eval_expr e2
  | MINUS (e1, e2) -> eval_expr e1 - eval_expr e2;;