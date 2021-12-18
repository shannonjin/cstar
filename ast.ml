
type typ = Star of typ | Bool | Unit | IdType of string 

type expr =
  Id of string
  | StrLit of string
  | Call of string * expr list

type formal = typ * string


type func_def = {
    func_def_name : string; 
    func_def_typ : typ;
    func_def_formals : formal list; (* [(type, id), ()]*)
    func_def_body : expr;
}

type func_decl = {
  func_decl_name : string; 
  func_decl_typ : typ;
  func_decl_formals : formal list; (* [(type, id), ()]*)
}


type defn = 
| Func_def of func_def
| Func_decl of func_decl


(*type defn = module_ list*)
  
type defns = defn list





