%{ 
    open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE 
%token RETURN IF ELSE FOR WHILE INT BOOL FLOAT VOID
//%token <int> LITERAL
//%token <bool> BLIT
//%token <string> ID FLIT
%token EOF FN

%start mod_
%type <Ast.mod_> mod_
%%

typ:
    INT   { Int   }
  | BOOL  { Bool  }
  | FLOAT { Float }
  | VOID  { Void  }

defns: 
    /* nothing */   { [] }
    | defns defn    { defns @ [defn]}

defn:
      func_def      {$1}
    | var_def SEMI  {$1}
    | mod           {$1}

func_def:
    FN ID LBRACE body RBRACE { }
var_def:
    LET ID typ EQ expr { }
mod: 
    MOD LBRACE defns RBRACE { Mod $1 }