@echo off
set /p dirName=What's the path of the directory containing the project files ?
set /p branchName=What's the branch name?
set /p commitName=What's the commit name?
IF NOT "%dirName:~0,3%"=="%CD:~0,3%" (%dirName:~0,2%)
cd %dirname%
git checkout -b %branchName%
git add %dirname% 
git commit -m "%commitName%"
git push --set-upstream origin %branchName%
PAUSE