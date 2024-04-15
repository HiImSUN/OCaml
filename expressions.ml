(*
1. store this file as a file (e.g. "let.ml")
2. type "ocaml let.ml" in the shell command line
*)

type pgm = exp 
and exp = 
  | CONST of int 
  | VAR of string 
  | ADD of exp * exp 
  | SUB of exp * exp
  | ISZERO of exp
  | IF of exp * exp * exp (* 조건, True일때 실행, False일때 실행 *)
  | LET of string * exp * exp
  | READ 

(*
let x = 1 in
  let y = let x = 2 
          in x + x
  in x + y
*)
let pgm1 = 
  LET ("x", CONST 1, 
    LET ("y", LET ("x", CONST 2, 
                ADD (VAR "x", VAR "x")), 
      (ADD (VAR "x", VAR "y"))))

			
type value = Int of int | Bool of bool

(* module: A set of related definitions of types, values, and exceptions *)
(* Defining a module: module [Module name] = struct ... end *)
(* Using a value defined in a module: [Module Name].[Value name] *) 
module Env = struct (* 시험엔 안 나온다 *)
  type t = (string * value) list 
  let empty = []
  let rec apply_env x e = 
    match e with  
    | [] -> raise (Failure ("Env: Not found: " ^ x))
    | (y,v)::tl -> 
        if y = x then v else apply_env x tl 
  let update x v e = (x,v)::e
end 

let rec eval : Env.t -> exp -> value
=fun env e ->
  match e with
  | CONST n -> Int n
  | VAR x -> Env.apply_env x env
  | ADD (e1, e2) ->
		let v1 = eval env e1 in
    let v2 = eval env e2 in
    (match v1,v2 with
    | Int n1, Int n2 -> Int (n1 + n2)
    | _ -> raise (Failure "Type Error: non-numeric values")) 
		(* binop env e1 e2 (fun x y -> x + y) *) (* or, binop env e1 e2 (+) *)
  | SUB (e1, e2) ->
		let v1 = eval env e1 in
    let v2 = eval env e2 in
    (match v1,v2 with
    | Int n1, Int n2 -> Int (n1 - n2)
    | _ -> raise (Failure "Type Error: non-numeric values")) 
		(* binop env e1 e2 (fun x y -> x - y) *) (* or, binop env e1 e2 (-) *)
  | READ -> Int (read_int ())
  | ISZERO e -> 
      (match eval env e with
      | Int 0 -> Bool true
      | Int _ -> Bool false
      | _ -> raise (Failure "Type Error: argument of iszero must be Boolean"))
  | IF (e1,e2,e3) ->
      (match eval env e1 with 
      | Bool true -> eval env e2
      | Bool false -> eval env e3
      | _ -> raise (Failure "Type Error: condition must be Boolean"))
  | LET (x,e1,e2) ->
      let v1 = eval env e1 in
      let v = eval (Env.update x v1 env) e2 in
  		v
 
and binop env e1 e2 op = 
  let v1 = eval env e1 in
  let v2 = eval env e2 in
    match v1, v2 with 
    | Int n1, Int n2 -> Int (op n1 n2)
    | _ -> raise (Failure ("Type Error: non-numeric values")) 

let print_value v = 
  print_endline (match v with
  | Int n  -> string_of_int n
  | Bool b -> string_of_bool b)

let _ = print_value (eval Env.empty pgm1)