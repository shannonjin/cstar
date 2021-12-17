 module L = Llvm
 open Ast
 
 let translate decl_lst =
   let context = L.global_context() in
   let the_module = L.create_module context "Cstar" in
   (* int, char, bool, float, void *)
   let i32_t      	 = L.i32_type    context
     and i8_t       = L.i8_type     context
     and i1_t       = L.i1_type     context
     and float_t    = L.double_type context
     and void_t     = L.void_type   context in
 
   let ltype_of_typ = function
       Int   -> i32_t
     | Char -> i8_t
     | Bool  -> i1_t
     | Float -> float_t
     | Void -> void_t
  
     in
 
     let print_main vd = match vd with
       | (Modit ("main",[])) -> 
         let printf_t : L.lltype = 
           L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
       let printf_func : L.llvalue = 
           L.declare_function "printf" printf_t the_module in
         (*let main_t = L.function_type void_t [| void_t |] in
         let main_f = L.define_function name main_t the_module in *)
         let builder = L.builder_at_end context (L.entry_block printf_func) in
         let char_format_str = L.build_global_stringptr "%c\n" "fmt" builder in
         let l_char = L.const_int i8_t ("") in 
         L.build_call printf_func [| char_format_str ; l_char |] "printf" builder;
         L.build_ret_void builder
       | _ -> raise (Failure "YIKES")
     in 
     print_main (List.hd decl_lst);
     the_module

(*module L = Llvm
module A = Ast 

open Sast

module StringMap = Map.Make(String)

(* translate : Sast.program -> Llvm.module *)
let translate (globals, functions) =
  let context    = L.global_context () in
  
  (* Create the LLVM compilation module into which
     we will generate code *)
  let the_module = L.create_module context "Cstar" in

  (* Get types from the context *)
  let i32_t      = L.i32_type    context
  and i8_t       = L.i8_type     context
  and i1_t       = L.i1_type     context
  and float_t    = L.double_type context
  and void_t     = L.void_type   context in

  (* Return the LLVM type for Cstar type *)
  let ltype_of_typ = function
      A.Int   -> i32_t
    | A.Bool  -> i1_t
    | A.Float -> float_t
    | A.Void  -> void_t
  in



let printf_t : L.lltype = 
    L.var_arg_function_type i32_t [| L.pointer_type i8_t |] in
let printf_func : L.llvalue = 
    L.declare_function "printf" printf_t the_module in
  
  (* Define each function (arguments and return type) so we can 
     call it even before we've created its body *)
     let function_defs : (L.llvalue * sfunc_def) StringMap.t =
      let function_defs m fdecl =
        let name = fdecl.sfname
        and formal_types = 
    Array.of_list (List.map (fun (t,_) -> ltype_of_typ t) fdecl.sformals)
        in let ftype = L.function_type (ltype_of_typ fdecl.styp) formal_types in
        StringMap.add name (L.define_function name ftype the_module, fdecl) m in
      List.fold_left function_decl StringMap.empty functions in
    (* Fill in the body of the given function *)
    let build_function_body fdecl =
    let (the_function, _) = StringMap.find fdecl.sfname function_decls in
    let builder = L.builder_at_end context (L.entry_block the_function) in

    let int_format_str = L.build_global_stringptr "%d\n" "fmt" builder
    and float_format_str = L.build_global_stringptr "%g\n" "fmt" builder in  



  List.iter build_function_body functions;
  the_module


*)

