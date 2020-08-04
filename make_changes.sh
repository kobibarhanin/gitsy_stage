#!/bin/bash

OPT=$1

if [[ "$OPT" == "all" ]]; then

for file in ./data*; do
    if [[ -f $file ]]; then
	echo information >> "$file"
    else
	for sub_file in ./$file/indir*; do
            echo information >> "$sub_file"
        done
    fi
done

elif [[ "$OPT" == "reset" ]]; then

for file in ./data*; do
    if [[ -f $file ]]; then
        echo information > "$file"
    else
        for sub_file in ./$file/indir*; do
            echo information > "$sub_file"
        done
    fi
done

else
    echo information >> data${OPT}.txt
fi
