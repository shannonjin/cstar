
type typ = Int | Bool | Float | Void | Char 

type func_def = {
    func_name : string; 
    generic_args : typ list;
    args : typ list;
    return_type : typ;
}

type var_def = {
  variable_name : string;
  variable_type : typ;
} 

type expr =
  Id of string

type module_ = 
Modit of func_def list
  
type defns = module_ list





