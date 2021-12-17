compiler.native :
	opam config exec -- \
	ocamlbuild -use-ocamlfind compiler.native


.PHONY : clean
clean :
	ocamlbuild -clean





