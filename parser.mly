%{ 
    open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE EQ
%token BOOL COLON COMMA STAR
//%token <int> LITERAL
//%token <bool> BLIT
%token <string> ID STRLIT
%token EOF FN

%start defns
%type <Ast.defns> defns
%%

defns: 
    /* nothing */    { [] }  
    | defns func_def      { $1 @ [$2]}

//defn:
  //  | func_def    {$1}

func_def:
    FN ID LPAREN formals_opt RPAREN COLON typ EQ LBRACE expr RBRACE   { { 
	 fname = $2;
     typ = $7;
	 parameters = List.rev $4;
	 body = List.rev $10 } }


formals_opt:
                    {[]}
    | formals_list   {$1}

formals_list:
  typ ID                   { [($1,$2)] }
  | formals_list COMMA typ ID { ($3,$4) :: $1 }

typ:
    BOOL  { Bool  }
  | STAR  { Star }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }

expr:
    ID              { Id($1) }
    | ID LPAREN args_opt RPAREN { Call($1, $3)  }
    | STRLIT  { StrLit }




