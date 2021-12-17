{ open Parser }

let letter = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']

rule token = parse
[' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| '('      { LPAREN }
| ')'      { RPAREN }
| '{'      { LBRACE }
| '}'      { RBRACE }
| ';'      { SEMI }
| '='      { EQ }
| ':'      { COLON }
| ','      { COMMA }
| "fn"     { FN }
| "bool"   { BOOL }
| "*"      { STAR }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']*     as lxm { ID(lxm) }
| eof { EOF }
