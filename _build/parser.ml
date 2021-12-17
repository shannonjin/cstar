type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LET
  | EQ
  | MOD
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | FLOAT
  | CHAR
  | VOID
  | ID of (string)
  | EOF
  | FN

open Parsing;;
let _ = parse_error;;
# 1 "parser.mly"
 
    open Ast
# 30 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* LET *);
  263 (* EQ *);
  264 (* MOD *);
  265 (* RETURN *);
  266 (* IF *);
  267 (* ELSE *);
  268 (* FOR *);
  269 (* WHILE *);
  270 (* INT *);
  271 (* BOOL *);
  272 (* FLOAT *);
  273 (* CHAR *);
  274 (* VOID *);
    0 (* EOF *);
  276 (* FN *);
    0|]

let yytransl_block = [|
  275 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\002\000\002\000\002\000\002\000\003\000\004\000\
\005\000\006\000\009\000\008\000\008\000\007\000\007\000\007\000\
\007\000\007\000\000\000"

let yylen = "\002\000\
\000\000\002\000\000\000\001\000\002\000\001\000\005\000\005\000\
\004\000\002\000\002\000\001\000\003\000\001\000\001\000\001\000\
\001\000\001\000\002\000"

let yydefred = "\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\002\000\004\000\
\000\000\006\000\000\000\001\000\000\000\005\000\014\000\015\000\
\016\000\017\000\018\000\000\000\000\000\000\000\000\000\009\000\
\000\000\000\000\012\000\008\000\007\000\000\000\010\000\000\000\
\011\000\013\000"

let yydgoto = "\002\000\
\003\000\007\000\008\000\009\000\010\000\025\000\020\000\028\000\
\031\000"

let yysindex = "\006\000\
\000\000\000\000\252\254\002\255\015\255\003\255\000\000\000\000\
\022\255\000\000\251\254\000\000\020\255\000\000\000\000\000\000\
\000\000\000\000\000\000\018\255\000\255\000\000\255\254\000\000\
\254\254\255\254\000\000\000\000\000\000\025\255\000\000\024\255\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\028\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\017\000\000\000\000\000\000\000\000\000\000\000\000\000\245\255\
\000\000"

let yytablesize = 29
let yytable = "\026\000\
\026\000\004\000\029\000\005\000\024\000\004\000\001\000\005\000\
\015\000\016\000\017\000\018\000\019\000\030\000\032\000\006\000\
\027\000\027\000\012\000\006\000\011\000\013\000\014\000\022\000\
\023\000\033\000\034\000\003\000\021\000"

let yycheck = "\002\001\
\002\001\006\001\005\001\008\001\005\001\006\001\001\000\008\001\
\014\001\015\001\016\001\017\001\018\001\025\000\026\000\020\001\
\019\001\019\001\004\001\020\001\019\001\019\001\001\001\004\001\
\007\001\001\001\003\001\000\000\012\000"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LET\000\
  EQ\000\
  MOD\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  FLOAT\000\
  CHAR\000\
  VOID\000\
  EOF\000\
  FN\000\
  "

let yynames_block = "\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 17 "parser.mly"
                    ( [] )
# 143 "parser.ml"
               : Ast.defns))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.defns) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'defn) in
    Obj.repr(
# 18 "parser.mly"
                    ( defns @ [defn])
# 151 "parser.ml"
               : Ast.defns))
; (fun __caml_parser_env ->
    Obj.repr(
# 21 "parser.mly"
                    ([])
# 157 "parser.ml"
               : 'defn))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'func_def) in
    Obj.repr(
# 22 "parser.mly"
                     (_1)
# 164 "parser.ml"
               : 'defn))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'var_def) in
    Obj.repr(
# 23 "parser.mly"
                    (_1)
# 171 "parser.ml"
               : 'defn))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'module_) in
    Obj.repr(
# 24 "parser.mly"
                        (_1)
# 178 "parser.ml"
               : 'defn))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    Obj.repr(
# 27 "parser.mly"
                             ( )
# 186 "parser.ml"
               : 'func_def))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 29 "parser.mly"
                       ( )
# 195 "parser.ml"
               : 'var_def))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : Ast.defns) in
    Obj.repr(
# 31 "parser.mly"
                            ( Modit _3 )
# 202 "parser.ml"
               : 'module_))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'body) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 35 "parser.mly"
            ( stmt @ [stmt])
# 210 "parser.ml"
               : 'body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 38 "parser.mly"
                 ( Expr _1 )
# 217 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "parser.mly"
                     ( Id(_1)                 )
# 224 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 46 "parser.mly"
                       ( _2                   )
# 231 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
          ( Int   )
# 237 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 52 "parser.mly"
          ( Bool  )
# 243 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parser.mly"
          ( Float )
# 249 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "parser.mly"
          ( Char  )
# 255 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
          ( Void  )
# 261 "parser.ml"
               : 'typ))
(* Entry defns *)
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
let defns (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.defns)
