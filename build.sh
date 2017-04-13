#!/bin/bash

cd
cd workspace/cmdev
# cd to the parent directory of the 11 modules
# this command should show at least the 11 directories 

date

if [ ! -d cm-pom ]; then
	echo "Cannot find directory cm-pom; found: "
	ls
	return
fi
	
set -e
# modules. Can comment out/in but ONLY ONE space
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
diagramanalyzer \		
ami \
)
for i in "${dirs[@]}";
        do cd $i;
        git pull
#        mvn clean install -DskipTests
        mvn clean install
        cd ../;
done;

date
