%{ 
    open Ast
%}

%token SEMI LPAREN RPAREN LBRACE RBRACE EQ
%token BOOL COLON COMMA STAR
//%token <int> LITERAL
//%token <bool> BLIT
%token <string> ID 
%token EOF FN

%start defns
%type <Ast.defns> defns
%%

defns: 
    /* nothing */    { [] }
