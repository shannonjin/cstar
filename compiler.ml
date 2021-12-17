open Ast
open Scanner
open Parser
open Codegen

let _ =
        let lexbuf = Lexing.from_channel stdin in
        let program = Parser.defns Scanner.token lexbuf in
        let m = Codegen.translate program in
        Llvm_analysis.assert_valid_module m;
        print_string (Llvm.string_of_llmodule m)