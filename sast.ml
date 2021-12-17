open Ast

type sfunc_def = {
    sfunc_name : string
  ; sgeneric_args : generic_type StringMap.t
  ; sargs : variable StringMap.t
  ; sreturn_type : type_
}

type svar_def = {
  svariable_name : string
; svariable_type : type_
} 
