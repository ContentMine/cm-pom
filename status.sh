#!/bin/bash

#cd
#cd workspace/cmdev
# cd to the parent directory of the 11 modules
# this command should show at least the 11 directories 


if [ ! -d cm-pom ]; then
	echo "Cannot find directory cm-pom; found: "
	ls
	return
fi
	
set -e
dirs=( \
cm-pom \
euclid \
svg \
html \
imageanalysis \
pdf2svg \
svg2xml \
cproject \
norma \
#diagramanalyzer \		
#ami \
)
for i in "${dirs[@]}";
        do cd $i;
		echo "======= "$i" ==="
        git pull
		git status
		git push
        cd ../;
done;

