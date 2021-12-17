fn f(a: i32, b: String): u32 = {

}

fn identifier( parameters ): type (; | = expr)

parameters = | parameter | parameter , parameters

parameter = identifier : type

type = 
| ()
| bool
| i(8 | 16 | 32 | 64)
| u(8 | 16 | 32 | 64)
| f(32 | 64)
| type *

args = | expr | expr, args

func_call = expr (args)

expr = 
| identifier
| func_call
| string_literal


fn puts(s: u8*): ();

fn main(): () = {
    puts(c"Hello, World")
}