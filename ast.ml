
type typ = Int | Bool | Float | Void | Char 

type func_def = {
    fname : string; 
    typ : typ;
    parameters : typ * string list;
    body : expr list;
}

type expr =
  Id of string
  | StrLit of string
  | Call of string * expr list

(*type defn = module_ list*)
  
type defns = func_def list





