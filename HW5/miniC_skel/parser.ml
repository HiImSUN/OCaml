type token =
  | NUM of (
# 5 "parser.mly"
        int
# 6 "parser.ml"
)
  | ID of (
# 6 "parser.mly"
        string
# 11 "parser.ml"
)
  | INT
  | PLUS
  | MINUS
  | STAR
  | SLASH
  | EQUAL
  | EQUALEQUAL
  | LE
  | LT
  | GE
  | GT
  | NOT
  | AND
  | OR
  | IF
  | ELSE
  | WHILE
  | DO
  | READ
  | PRINT
  | SEMICOLON
  | BEGIN
  | END
  | VAR
  | LET
  | IN
  | PROC
  | SKIP
  | LBRACE
  | RBRACE
  | LBLOCK
  | RBLOCK
  | LPAREN
  | RPAREN
  | EOF
  | TRUE
  | FALSE
  | COMMA
  | DOT

open Parsing
let _ = parse_error;;
# 2 "parser.mly"

# 57 "parser.ml"
let yytransl_const = [|
  259 (* INT *);
  260 (* PLUS *);
  261 (* MINUS *);
  262 (* STAR *);
  263 (* SLASH *);
  264 (* EQUAL *);
  265 (* EQUALEQUAL *);
  266 (* LE *);
  267 (* LT *);
  268 (* GE *);
  269 (* GT *);
  270 (* NOT *);
  271 (* AND *);
  272 (* OR *);
  273 (* IF *);
  274 (* ELSE *);
  275 (* WHILE *);
  276 (* DO *);
  277 (* READ *);
  278 (* PRINT *);
  279 (* SEMICOLON *);
  280 (* BEGIN *);
  281 (* END *);
  282 (* VAR *);
  283 (* LET *);
  284 (* IN *);
  285 (* PROC *);
  286 (* SKIP *);
  287 (* LBRACE *);
  288 (* RBRACE *);
  289 (* LBLOCK *);
  290 (* RBLOCK *);
  291 (* LPAREN *);
  292 (* RPAREN *);
    0 (* EOF *);
  293 (* TRUE *);
  294 (* FALSE *);
  295 (* COMMA *);
  296 (* DOT *);
    0|]

let yytransl_block = [|
  257 (* NUM *);
  258 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\004\000\004\000\004\000\
\003\000\003\000\003\000\005\000\005\000\005\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\001\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\002\000\011\000\007\000\
\006\000\005\000\004\000\004\000\003\000\003\000\003\000\005\000\
\003\000\002\000\003\000\004\000\004\000\000\000\001\000\003\000\
\000\000\001\000\003\000\000\000\003\000\005\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\002\000\000\000\000\000\003\000\
\004\000\039\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\027\000\
\000\000\034\000\000\000\000\000\022\000\000\000\007\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\028\000\029\000\000\000\000\000\
\000\000\000\000\000\000\020\000\019\000\000\000\000\000\000\000\
\000\000\000\000\000\000\035\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\016\000\000\000\000\000\000\000\
\015\000"

let yydgoto = "\002\000\
\018\000\019\000\051\000\065\000\030\000"

let yysindex = "\015\000\
\076\255\000\000\000\000\010\255\076\255\002\255\016\255\019\255\
\020\255\076\255\047\255\027\255\000\000\058\255\076\255\000\000\
\000\000\000\000\206\000\076\255\001\255\076\255\076\255\072\255\
\076\255\116\255\073\255\080\255\083\255\226\254\124\255\076\255\
\076\255\076\255\076\255\076\255\076\255\076\255\080\255\076\255\
\000\000\097\255\061\255\161\255\169\255\068\255\212\255\000\000\
\076\255\000\000\220\254\076\255\000\000\106\255\000\000\109\255\
\109\255\001\255\001\255\000\255\061\255\015\255\236\254\061\255\
\248\254\101\255\079\255\086\255\000\000\000\000\030\001\076\255\
\122\255\061\255\119\255\000\000\000\000\076\255\076\255\076\255\
\076\255\076\255\001\255\000\000\076\255\061\255\061\255\039\001\
\050\001\061\255\061\255\117\255\000\000\105\255\076\255\071\001\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\232\254\000\000\000\000\
\000\000\000\000\000\000\000\000\118\000\000\000\000\000\000\000\
\000\000\000\000\000\000\025\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\075\000\018\255\033\255\
\000\000\000\000\021\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\215\000\
\240\000\155\000\161\000\249\000\026\000\112\000\000\000\037\255\
\000\000\038\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\237\254\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\198\000\000\000\000\000\044\255\058\000\000\000\
\000\000\063\000\014\255\000\000\000\000\000\000\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\007\000\098\000\000\000\000\000"

let yytablesize = 623
let yytable = "\072\000\
\006\000\053\000\073\000\032\000\033\000\034\000\035\000\036\000\
\054\000\037\000\037\000\021\000\037\000\076\000\036\000\001\000\
\026\000\020\000\073\000\037\000\021\000\031\000\038\000\038\000\
\037\000\012\000\043\000\077\000\044\000\045\000\078\000\047\000\
\039\000\039\000\040\000\040\000\022\000\023\000\056\000\057\000\
\058\000\059\000\060\000\061\000\062\000\038\000\064\000\039\000\
\027\000\040\000\023\000\033\000\038\000\024\000\025\000\071\000\
\033\000\024\000\074\000\029\000\033\000\028\000\017\000\033\000\
\032\000\033\000\034\000\035\000\030\000\036\000\037\000\030\000\
\031\000\046\000\026\000\031\000\003\000\004\000\083\000\032\000\
\049\000\050\000\032\000\038\000\086\000\087\000\088\000\089\000\
\090\000\005\000\052\000\091\000\006\000\039\000\007\000\040\000\
\008\000\009\000\066\000\010\000\042\000\096\000\011\000\069\000\
\012\000\013\000\014\000\075\000\079\000\080\000\015\000\025\000\
\016\000\017\000\034\000\035\000\081\000\014\000\037\000\032\000\
\033\000\034\000\035\000\084\000\036\000\037\000\085\000\032\000\
\033\000\034\000\035\000\038\000\036\000\037\000\094\000\095\000\
\063\000\000\000\038\000\000\000\048\000\039\000\000\000\040\000\
\000\000\000\000\038\000\000\000\039\000\000\000\040\000\000\000\
\000\000\000\000\010\000\042\000\039\000\000\000\040\000\055\000\
\011\000\000\000\000\000\042\000\032\000\033\000\034\000\035\000\
\000\000\036\000\037\000\000\000\032\000\033\000\034\000\035\000\
\000\000\036\000\037\000\000\000\000\000\000\000\000\000\038\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\038\000\
\000\000\039\000\000\000\040\000\067\000\018\000\000\000\000\000\
\042\000\039\000\000\000\040\000\068\000\041\000\000\000\000\000\
\042\000\000\000\000\000\000\000\000\000\000\000\008\000\032\000\
\033\000\034\000\035\000\000\000\036\000\037\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\038\000\000\000\000\000\000\000\000\000\009\000\
\000\000\000\000\000\000\000\000\039\000\000\000\040\000\070\000\
\013\000\000\000\000\000\042\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\006\000\006\000\006\000\006\000\
\000\000\006\000\006\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\
\000\000\006\000\000\000\000\000\006\000\000\000\000\000\000\000\
\006\000\006\000\000\000\006\000\006\000\000\000\000\000\006\000\
\006\000\023\000\023\000\023\000\023\000\021\000\023\000\023\000\
\021\000\000\000\012\000\000\000\021\000\012\000\000\000\000\000\
\021\000\012\000\000\000\021\000\023\000\012\000\023\000\000\000\
\012\000\023\000\000\000\000\000\000\000\023\000\023\000\000\000\
\023\000\023\000\000\000\000\000\023\000\023\000\026\000\026\000\
\026\000\026\000\024\000\026\000\026\000\024\000\000\000\017\000\
\000\000\024\000\017\000\000\000\000\000\024\000\017\000\000\000\
\024\000\026\000\017\000\026\000\000\000\017\000\026\000\000\000\
\000\000\000\000\026\000\026\000\000\000\000\000\026\000\000\000\
\000\000\026\000\026\000\025\000\025\000\025\000\025\000\000\000\
\025\000\014\000\014\000\014\000\014\000\000\000\014\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\
\025\000\000\000\000\000\025\000\000\000\000\000\014\000\025\000\
\000\000\014\000\000\000\025\000\000\000\014\000\025\000\025\000\
\000\000\014\000\000\000\000\000\014\000\014\000\010\000\010\000\
\010\000\010\000\000\000\010\000\011\000\011\000\011\000\011\000\
\000\000\011\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\010\000\000\000\000\000\010\000\000\000\
\000\000\011\000\010\000\000\000\011\000\000\000\010\000\000\000\
\011\000\010\000\010\000\000\000\011\000\000\000\000\000\011\000\
\011\000\018\000\018\000\018\000\018\000\000\000\018\000\000\000\
\000\000\032\000\033\000\034\000\035\000\000\000\036\000\037\000\
\000\000\000\000\008\000\008\000\000\000\000\000\018\000\008\000\
\000\000\018\000\000\000\000\000\038\000\018\000\000\000\000\000\
\000\000\018\000\000\000\000\000\018\000\018\000\039\000\008\000\
\040\000\000\000\008\000\009\000\009\000\042\000\008\000\000\000\
\009\000\000\000\008\000\000\000\000\000\008\000\008\000\000\000\
\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\
\009\000\000\000\000\000\009\000\000\000\000\000\000\000\009\000\
\000\000\013\000\000\000\009\000\013\000\000\000\009\000\009\000\
\013\000\000\000\000\000\000\000\013\000\000\000\000\000\013\000\
\013\000\032\000\033\000\034\000\035\000\000\000\036\000\037\000\
\000\000\000\000\032\000\033\000\034\000\035\000\000\000\036\000\
\037\000\000\000\000\000\000\000\038\000\032\000\033\000\034\000\
\035\000\082\000\036\000\037\000\000\000\038\000\039\000\000\000\
\040\000\000\000\000\000\000\000\000\000\042\000\092\000\039\000\
\038\000\040\000\032\000\033\000\034\000\035\000\042\000\036\000\
\037\000\093\000\039\000\000\000\040\000\000\000\000\000\000\000\
\000\000\042\000\000\000\000\000\000\000\038\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\097\000\039\000\
\000\000\040\000\000\000\000\000\000\000\000\000\042\000"

let yycheck = "\036\001\
\000\000\032\001\039\001\004\001\005\001\006\001\007\001\032\001\
\039\001\010\001\010\001\005\000\032\001\034\001\039\001\001\000\
\010\000\008\001\039\001\039\001\000\000\015\000\023\001\023\001\
\010\001\000\000\020\000\036\001\022\000\023\000\039\001\025\000\
\033\001\033\001\035\001\035\001\035\001\000\000\032\000\033\000\
\034\000\035\000\036\000\037\000\038\000\032\001\040\000\033\001\
\002\001\035\001\035\001\034\001\039\001\035\001\035\001\049\000\
\039\001\000\000\052\000\002\001\036\001\035\001\000\000\039\001\
\004\001\005\001\006\001\007\001\036\001\009\001\010\001\039\001\
\036\001\002\001\000\000\039\001\001\001\002\001\072\000\036\001\
\008\001\002\001\039\001\023\001\078\000\079\000\080\000\081\000\
\082\000\014\001\008\001\085\000\017\001\033\001\019\001\035\001\
\021\001\022\001\002\001\024\001\040\001\095\000\027\001\036\001\
\029\001\030\001\031\001\002\001\008\001\031\001\035\001\000\000\
\037\001\038\001\006\001\007\001\031\001\000\000\010\001\004\001\
\005\001\006\001\007\001\002\001\009\001\010\001\008\001\004\001\
\005\001\006\001\007\001\023\001\009\001\010\001\018\001\031\001\
\039\000\255\255\023\001\255\255\025\001\033\001\255\255\035\001\
\255\255\255\255\023\001\255\255\033\001\255\255\035\001\255\255\
\255\255\255\255\000\000\040\001\033\001\255\255\035\001\036\001\
\000\000\255\255\255\255\040\001\004\001\005\001\006\001\007\001\
\255\255\009\001\010\001\255\255\004\001\005\001\006\001\007\001\
\255\255\009\001\010\001\255\255\255\255\255\255\255\255\023\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\255\255\033\001\255\255\035\001\036\001\000\000\255\255\255\255\
\040\001\033\001\255\255\035\001\036\001\000\000\255\255\255\255\
\040\001\255\255\255\255\255\255\255\255\255\255\000\000\004\001\
\005\001\006\001\007\001\255\255\009\001\010\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\023\001\255\255\255\255\255\255\255\255\000\000\
\255\255\255\255\255\255\255\255\033\001\255\255\035\001\036\001\
\000\000\255\255\255\255\040\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\004\001\005\001\006\001\007\001\
\255\255\009\001\010\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\023\001\
\255\255\025\001\255\255\255\255\028\001\255\255\255\255\255\255\
\032\001\033\001\255\255\035\001\036\001\255\255\255\255\039\001\
\040\001\004\001\005\001\006\001\007\001\025\001\009\001\010\001\
\028\001\255\255\025\001\255\255\032\001\028\001\255\255\255\255\
\036\001\032\001\255\255\039\001\023\001\036\001\025\001\255\255\
\039\001\028\001\255\255\255\255\255\255\032\001\033\001\255\255\
\035\001\036\001\255\255\255\255\039\001\040\001\004\001\005\001\
\006\001\007\001\025\001\009\001\010\001\028\001\255\255\025\001\
\255\255\032\001\028\001\255\255\255\255\036\001\032\001\255\255\
\039\001\023\001\036\001\025\001\255\255\039\001\028\001\255\255\
\255\255\255\255\032\001\033\001\255\255\255\255\036\001\255\255\
\255\255\039\001\040\001\004\001\005\001\006\001\007\001\255\255\
\009\001\004\001\005\001\006\001\007\001\255\255\009\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\023\001\255\255\
\025\001\255\255\255\255\028\001\255\255\255\255\025\001\032\001\
\255\255\028\001\255\255\036\001\255\255\032\001\039\001\040\001\
\255\255\036\001\255\255\255\255\039\001\040\001\004\001\005\001\
\006\001\007\001\255\255\009\001\004\001\005\001\006\001\007\001\
\255\255\009\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\025\001\255\255\255\255\028\001\255\255\
\255\255\025\001\032\001\255\255\028\001\255\255\036\001\255\255\
\032\001\039\001\040\001\255\255\036\001\255\255\255\255\039\001\
\040\001\004\001\005\001\006\001\007\001\255\255\009\001\255\255\
\255\255\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\255\255\255\255\004\001\005\001\255\255\255\255\025\001\009\001\
\255\255\028\001\255\255\255\255\023\001\032\001\255\255\255\255\
\255\255\036\001\255\255\255\255\039\001\040\001\033\001\025\001\
\035\001\255\255\028\001\004\001\005\001\040\001\032\001\255\255\
\009\001\255\255\036\001\255\255\255\255\039\001\040\001\255\255\
\255\255\009\001\255\255\255\255\255\255\255\255\255\255\255\255\
\025\001\255\255\255\255\028\001\255\255\255\255\255\255\032\001\
\255\255\025\001\255\255\036\001\028\001\255\255\039\001\040\001\
\032\001\255\255\255\255\255\255\036\001\255\255\255\255\039\001\
\040\001\004\001\005\001\006\001\007\001\255\255\009\001\010\001\
\255\255\255\255\004\001\005\001\006\001\007\001\255\255\009\001\
\010\001\255\255\255\255\255\255\023\001\004\001\005\001\006\001\
\007\001\028\001\009\001\010\001\255\255\023\001\033\001\255\255\
\035\001\255\255\255\255\255\255\255\255\040\001\032\001\033\001\
\023\001\035\001\004\001\005\001\006\001\007\001\040\001\009\001\
\010\001\032\001\033\001\255\255\035\001\255\255\255\255\255\255\
\255\255\040\001\255\255\255\255\255\255\023\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\032\001\033\001\
\255\255\035\001\255\255\255\255\255\255\255\255\040\001"

let yynames_const = "\
  INT\000\
  PLUS\000\
  MINUS\000\
  STAR\000\
  SLASH\000\
  EQUAL\000\
  EQUALEQUAL\000\
  LE\000\
  LT\000\
  GE\000\
  GT\000\
  NOT\000\
  AND\000\
  OR\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  DO\000\
  READ\000\
  PRINT\000\
  SEMICOLON\000\
  BEGIN\000\
  END\000\
  VAR\000\
  LET\000\
  IN\000\
  PROC\000\
  SKIP\000\
  LBRACE\000\
  RBRACE\000\
  LBLOCK\000\
  RBLOCK\000\
  LPAREN\000\
  RPAREN\000\
  EOF\000\
  TRUE\000\
  FALSE\000\
  COMMA\000\
  DOT\000\
  "

let yynames_block = "\
  NUM\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 27 "parser.mly"
            ( _1 )
# 385 "parser.ml"
               : C.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 31 "parser.mly"
         ( C.SKIP )
# 391 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 32 "parser.mly"
        ( C.TRUE )
# 397 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
          ( C.FALSE )
# 403 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 34 "parser.mly"
       ( C.CONST _1 )
# 410 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "parser.mly"
       ( C.VAR _1 )
# 417 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 36 "parser.mly"
                      ( _2 )
# 424 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 37 "parser.mly"
                 ( C.ADD (_1,_3) )
# 432 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 38 "parser.mly"
                  ( C.SUB (_1,_3) )
# 440 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 39 "parser.mly"
                  ( C.MUL (_1,_3) )
# 448 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 40 "parser.mly"
                  ( C.DIV (_1,_3) )
# 456 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 41 "parser.mly"
               ( C.LE (_1,_3) )
# 464 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 42 "parser.mly"
                      ( C.EQ (_1,_3) )
# 472 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 43 "parser.mly"
           ( C.NOT _2 )
# 479 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 8 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 5 : 'exp) in
    let _10 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 44 "parser.mly"
                                                                 ( C.IF (_3,_6,_10) )
# 488 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 45 "parser.mly"
                                             (C.WHILE (_3,_6))
# 496 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 46 "parser.mly"
                            ( C.LET (_2,_4,_6) )
# 505 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'vargs) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 47 "parser.mly"
                                ( C.PROC (_3,_5) )
# 513 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'args) in
    Obj.repr(
# 48 "parser.mly"
                          ( C.CALLV (_1,_3) )
# 521 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'vargs) in
    Obj.repr(
# 49 "parser.mly"
                           ( C.CALLR (_1,_3) )
# 529 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 50 "parser.mly"
                ( C.ASSIGN (_1, _3) )
# 537 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'records) in
    Obj.repr(
# 51 "parser.mly"
                         ( C.RECORD (_2) )
# 544 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 52 "parser.mly"
              ( C.FIELD (_1, _3) )
# 552 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 53 "parser.mly"
                         ( C.ASSIGNF (_1, _3, _5) )
# 561 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 54 "parser.mly"
                     ( C.SEQ (_1, _3) )
# 569 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 55 "parser.mly"
                  ( _1 )
# 576 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 56 "parser.mly"
                 ( C.BEGIN _2 )
# 583 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 57 "parser.mly"
                         ( C.READ _3 )
# 590 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 58 "parser.mly"
                            ( C.PRINT _3 )
# 597 "parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
      ( [] )
# 603 "parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 62 "parser.mly"
        ( [_1] )
# 610 "parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'args) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 63 "parser.mly"
                   ( _1 @ [_3] )
# 618 "parser.ml"
               : 'args))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
       ( [] )
# 624 "parser.ml"
               : 'vargs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 67 "parser.mly"
       ( [_1] )
# 631 "parser.ml"
               : 'vargs))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'vargs) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "parser.mly"
                   ( _1 @ [_3] )
# 639 "parser.ml"
               : 'vargs))
; (fun __caml_parser_env ->
    Obj.repr(
# 71 "parser.mly"
         ( [] )
# 645 "parser.ml"
               : 'records))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 72 "parser.mly"
                ( [ (_1, _3) ] )
# 653 "parser.ml"
               : 'records))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'records) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 73 "parser.mly"
                              ( _1 @ [(_3, _5)] )
# 662 "parser.ml"
               : 'records))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : C.program)
;;
# 76 "parser.mly"

let parse_error s = print_endline s
# 690 "parser.ml"
