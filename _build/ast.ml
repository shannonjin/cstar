type typ = Int | Bool | Float | Void 

type func_def = {
    func_name : string
  ; generic_args : generic_type StringMap.t
  ; args : variable StringMap.t
  ; return_type : type_
}

type var_def = {
  variable_name : string
; variable_type : type_
} 
