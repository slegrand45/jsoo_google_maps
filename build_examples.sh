
ocamlbuild -I examples -use-ocamlfind \
  -pkgs lwt.syntax,js_of_ocaml,js_of_ocaml.syntax \
  -syntax camlp4o \
  main.byte ;

js_of_ocaml +weak.js --opt 3 -o examples/js/main.js main.byte
