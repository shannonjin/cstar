type typ = Int | Bool | Float | Void 

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
