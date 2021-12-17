%{ 
    open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE LET EQ MOD
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID
//%token <int> LITERAL
//%token <bool> BLIT
%token <string> ID 
%token EOF FN

%start defns
%type <Ast.defns> defns
%%

defns: 
    /* nothing */   { [] }
    | defns defn    { defns @ [defn]}

defn:
      func_def      {$1}
    | var_def SEMI  {$1}
    | module_           {$1}

func_def:
    FN ID LBRACE body RBRACE { }
var_def:
    LET ID typ EQ expr { }
module_: 
    MOD LBRACE defns RBRACE { Modit $3 }


body: 
| body stmt { stmt @ [stmt]}

stmt: 
    expr SEMI    { Expr $1 }

expr:
    //LITERAL          { Literal($1)            }
  //| FLIT	     { Fliteral($1)           }
  | ID               { Id($1)                 }
  //| ID ASSIGN expr   { Assign($1, $3)         }
  //| ID LPAREN args_opt RPAREN { Call($1, $3)  }
  | LPAREN expr RPAREN { $2                   }



typ:
    INT   { Int   }
  | BOOL  { Bool  }
  | FLOAT { Float }
  | VOID  { Void  }