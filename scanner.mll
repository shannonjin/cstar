{ open Parser }

let letter = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']

rule token = parse
  [' ' '\n' '\r' '\t' '\x0B' '\x0C']+ { WhiteSpace }
| '('      { LPAREN }
| ')'      { RPAREN }
| '{'      { LBRACE }
| '}'      { RBRACE }
| ';'      { SEMI }
| '='      { EQ }
| "fn"     { FN }
| "void"    { VOID }
| "int"    { INT }
| "bool"   { BOOL }
| "float"  { FLOAT }
| "Let"    { LET }
| "mod"     { MOD }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']*     as lxm { ID(lxm) }
| eof { EOF }
