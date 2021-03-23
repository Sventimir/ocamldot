#!/bin/bash
# Note: this relies on `ocamldot` being in PATH.
# redirect output of this to a png file.
dir="$1"
shift

ocamldep -I "$dir" "$dir"/*.ml \
    | ocamldot "$@" \
    | dot -Tpng /dev/stdin
