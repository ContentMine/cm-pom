# cm-pom
Parent POM for ContentMine Java/MVN stack

## ami-stack 2017-03
**NOTE do not use the scripts till I have checked the branches**

Currently the major effort is in ami. The build process requires 11 builds and is best done from a script.

The stack is
```
cm-pom
euclid
svg
html
imageanalysis
pdf2svg
svg2xml
cproject
diagramanalyzer
norma
ami
```
The dependencies may change but the order will be defined in the `build.sh` file. 

Before building you should `clone` all these from github. Once installed `status.sh` should update before building. So:
```
# initial
git clone https://github.com/contentmine/cm-pom.git
git clone https://github.com/contentmine/euclid.git
...
git clone https://github.com/contentmine/ami.git
```
for subsequent builds
```
source status.sh
```



### status.sh
This script checks that there are no uncomitted components or unpushed ones. Mainly used by PMR. It will issue commands of the form:
```�#!/bin/bash

cd
cd workspace/cmdev

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
```
and all the way to AMI.

It does NOT `commit` or merge. AFAIK `pull` and `push` are idempotent and so can't do any harm.

To run
```
source status.sh
```


### build.sh
This should be used for all builds. It starts:
```
#!/bin/bash

cd
cd workspace/cmdev

cd cm-pom
mvn clean install
cd ..

cd euclid
mvn clean install
cd ..

```
and goes through to `ami`.

run by
```
source build.sh
```

The output may be large for some modules. You may wish to 
```
source build.sh > build.log
```

