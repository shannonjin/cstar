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
    | defns defn      { $1 @ [$2]}

defn: 
   func_def           {Func_def($1)}
 | func_decl          {Func_decl($1)}  

func_def:
    FN ID LPAREN formals_opt RPAREN COLON typ EQ LBRACE expr RBRACE   { { 
	 func_def_name = $2;
     func_def_typ = $7;
	 func_def_formals = List.rev $4;
	 func_def_body = $10 } }
    
func_decl:
 FN ID LPAREN formals_opt RPAREN COLON typ SEMI { { 
	 func_decl_name = $2;
     func_decl_typ = $7;
	 func_decl_formals = List.rev $4;} }


formals_opt:
                    {[]}
    | formals_list   {$1}

formals_list:
    ID COLON typ                   { [($3,$1)] } //$1 is typ object
  | formals_list COMMA ID COLON typ { ($5,$3) :: $1 }

typ:
  LPAREN RPAREN         { Unit }
  | ID      { IdType($1) }
  | BOOL  { Bool  }
  | typ STAR  { Star($1) }

args_opt:
    /* nothing */ { [] }
  | args_list  { List.rev $1 }

args_list:
    expr                    { [$1] }
  | args_list COMMA expr { $3 :: $1 }

expr:
    ID              { Id($1) }
    | ID LPAREN args_opt RPAREN { Call($1, $3)  }
    | STRLIT  { StrLit($1) }




