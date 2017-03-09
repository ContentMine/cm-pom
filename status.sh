#!/bin/bash

# cd
# cd workspace/cmdev

# cd to the directory above the 11 modules.
# the next command should list them

ls

cd cm-pom
echo "======= CM-POM ==="
git pull
git status
git push
cd ..

cd euclid
echo "======= EUCLID ========"
git pull
git status
git push
cd ..

cd svg
echo "======= SVG ========"
git pull
git status
git push
cd ..

cd html
echo "======= HTML ========"
git pull
git status
git push
cd ..

cd imageanalysis
echo "======= IMAGEANALYSIS ========"
git pull
git status
git push
cd ..

cd pdf2svg
echo "======= PDF2SVG ========"
git pull
git status
git push
cd ..

cd svg2xml
echo "======= SVG2XML ========"
git pull
git status
git push
cd ..

cd cproject
echo "======= CPROJECT ========"
git pull
git status
git push
cd ..

cd norma
echo "======= NORMA ========"
git pull
git status
git push
cd ..

cd diagramanalyzer
echo "======= DIAGRAMANALYZER ========"
git pull
git status
git push
cd ..

cd ami
echo "======= AMI ========"
git pull
git status
git push
cd ..


