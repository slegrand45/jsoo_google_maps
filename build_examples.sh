
ocamlbuild -I examples -use-ocamlfind \
  -pkgs lwt.ppx,js_of_ocaml,js_of_ocaml.ppx \
  main.byte ;

js_of_ocaml --opt 3 -o examples/js/main.js main.byte
