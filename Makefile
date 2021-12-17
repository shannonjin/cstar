compiler.native :
	opam config exec -- \
	ocamlbuild -use-ocamlfind compiler.native  -package llvm 


.PHONY : clean
clean :
	ocamlbuild -clean





