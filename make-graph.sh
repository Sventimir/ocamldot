#!/bin/bash
# Note: this relies on `ocamldot` being in PATH.
# redirect output of this to a png file.

cd "$1"
ocamldep *.ml | ocamldot -g "$2" | dot -Tpng /dev/stdin
