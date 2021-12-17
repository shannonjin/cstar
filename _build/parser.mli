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

val defns :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.defns
