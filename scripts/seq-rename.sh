#! /bin/bash
num=1
for file in *.$1; do
       mv "$file" "$(printf "%u" $num).$1"
       let num=$num+1
done
