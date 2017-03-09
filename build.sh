#!/bin/bash

#cd
#cd workspace/cmdev
# cd to the parent directory of the 11 modules
# this command should show at least the 11 directories 

ls 

cd cm-pom
mvn clean install
cd ..

cd euclid
mvn clean install
cd ..

cd svg
mvn clean install
cd ..

cd html
mvn clean install
cd ..

cd imageanalysis
mvn clean install
cd ..

cd pdf2svg
mvn clean install
cd ..

cd svg2xml
mvn clean install
cd ..

cd cproject
mvn clean install
cd ..

cd norma
mvn clean install
cd ..

# comment out if you are only building norma

# cd diagramanalyzer
# mvn clean install
# cd ..

# cd ami
# mvn clean install
# cd ..


