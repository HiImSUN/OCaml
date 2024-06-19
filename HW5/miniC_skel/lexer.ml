# 1 "lexer.mll"
 
 open Parser
 exception Eof
 exception LexicalError
 let comment_depth = ref 0
 let keyword_tbl = Hashtbl.create 31
 let _ = List.iter (fun (keyword, tok) -> Hashtbl.add keyword_tbl keyword tok)
                   [
                    ("int", INT);
                    ("if", IF);
                    ("else", ELSE);
                    ("while", WHILE);
                    ("print", PRINT);
                    ("read", READ);
                    ("true", TRUE);
                    ("false", FALSE);
                    ("begin", BEGIN);
                    ("end", END);
										("let", LET);
										("in", IN);
										("proc", PROC);
										("skip", SKIP);
                  ] 

# 27 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\233\255\234\255\235\255\236\255\237\255\239\255\240\255\
    \241\255\002\000\003\000\244\255\245\255\247\255\248\255\249\255\
    \250\255\251\255\078\000\153\000\049\000\002\000\254\255\243\255\
    \242\255\094\000\252\255\253\255\045\000\051\000\255\255\254\255\
    ";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\017\000\022\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\003\000\002\000\009\000\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\003\000\003\000\255\255\255\255\
    ";
  Lexing.lex_default =
   "\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\255\255\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\255\255\255\255\000\000\000\000\
    \000\000\026\000\000\000\000\000\255\255\255\255\000\000\000\000\
    ";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\021\000\021\000\021\000\021\000\021\000\000\000\021\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \021\000\012\000\021\000\000\000\000\000\000\000\000\000\000\000\
    \007\000\006\000\013\000\015\000\017\000\014\000\016\000\020\000\
    \019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\010\000\008\000\009\000\011\000\005\000\024\000\
    \023\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\022\000\031\000\030\000\000\000\000\000\
    \000\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\004\000\000\000\003\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \028\000\000\000\000\000\000\000\000\000\029\000\000\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\000\000\000\000\000\000\000\000\018\000\000\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\027\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\021\000\021\000\000\000\255\255\021\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\021\000\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\009\000\
    \010\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\020\000\028\000\029\000\255\255\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\255\255\000\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \025\000\255\255\255\255\255\255\255\255\025\000\255\255\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\255\255\255\255\255\255\255\255\018\000\255\255\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\018\000\018\000\018\000\018\000\018\000\018\000\018\000\
    \018\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
    \019\000\019\000\019\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\025\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec start lexbuf =
   __ocaml_lex_start_rec lexbuf 0
and __ocaml_lex_start_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 31 "lexer.mll"
             ( start lexbuf )
# 174 "lexer.ml"

  | 1 ->
# 32 "lexer.mll"
            ( comment_depth :=1; comment lexbuf; start lexbuf )
# 179 "lexer.ml"

  | 2 ->
# 33 "lexer.mll"
              ( NUM (int_of_string (Lexing.lexeme lexbuf)) )
# 184 "lexer.ml"

  | 3 ->
# 34 "lexer.mll"
          ( let id = Lexing.lexeme lexbuf
            in try Hashtbl.find keyword_tbl id
               with _ -> ID id
            )
# 192 "lexer.ml"

  | 4 ->
# 38 "lexer.mll"
             ( COMMA )
# 197 "lexer.ml"

  | 5 ->
# 39 "lexer.mll"
           ( DOT )
# 202 "lexer.ml"

  | 6 ->
# 40 "lexer.mll"
           ( PLUS )
# 207 "lexer.ml"

  | 7 ->
# 41 "lexer.mll"
             ( MINUS )
# 212 "lexer.ml"

  | 8 ->
# 42 "lexer.mll"
             ( STAR )
# 217 "lexer.ml"

  | 9 ->
# 43 "lexer.mll"
           ( SLASH )
# 222 "lexer.ml"

  | 10 ->
# 44 "lexer.mll"
             ( NOT )
# 227 "lexer.ml"

  | 11 ->
# 45 "lexer.mll"
             ( EQUALEQUAL )
# 232 "lexer.ml"

  | 12 ->
# 46 "lexer.mll"
             ( EQUAL )
# 237 "lexer.ml"

  | 13 ->
# 47 "lexer.mll"
             ( LE )
# 242 "lexer.ml"

  | 14 ->
# 48 "lexer.mll"
             ( SEMICOLON )
# 247 "lexer.ml"

  | 15 ->
# 49 "lexer.mll"
             ( LPAREN )
# 252 "lexer.ml"

  | 16 ->
# 50 "lexer.mll"
             ( RPAREN )
# 257 "lexer.ml"

  | 17 ->
# 51 "lexer.mll"
           ( LBLOCK )
# 262 "lexer.ml"

  | 18 ->
# 52 "lexer.mll"
             ( RBLOCK )
# 267 "lexer.ml"

  | 19 ->
# 53 "lexer.mll"
             ( LBRACE )
# 272 "lexer.ml"

  | 20 ->
# 54 "lexer.mll"
             ( RBRACE )
# 277 "lexer.ml"

  | 21 ->
# 55 "lexer.mll"
             ( EOF)
# 282 "lexer.ml"

  | 22 ->
# 56 "lexer.mll"
         ( raise LexicalError )
# 287 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_start_rec lexbuf __ocaml_lex_state

and comment lexbuf =
   __ocaml_lex_comment_rec lexbuf 25
and __ocaml_lex_comment_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 59 "lexer.mll"
          (comment_depth := !comment_depth+1; comment lexbuf)
# 299 "lexer.ml"

  | 1 ->
# 60 "lexer.mll"
          (comment_depth := !comment_depth-1;
           if !comment_depth > 0 then comment lexbuf )
# 305 "lexer.ml"

  | 2 ->
# 62 "lexer.mll"
         (raise Eof)
# 310 "lexer.ml"

  | 3 ->
# 63 "lexer.mll"
         (comment lexbuf)
# 315 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_comment_rec lexbuf __ocaml_lex_state

;;

