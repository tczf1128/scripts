#! /bin/bash


find $PWD/$1 -name "*.h" -o -name "*.c" -o -name "*.cc" > cscope.files

cscope -bkq  -i cscope.files

ctags -R --c-kinds=+px --fields=+iamKlnzS --extra=+fq -L cscope.files


