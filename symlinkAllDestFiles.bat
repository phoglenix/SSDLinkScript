@echo off

set steamDir=C:\Games\Steam\steamapps\
set otherDir=I:\Games\Steam\steamapps\

cd %steamDir%
echo.
echo The current directory is:
cd
echo      ^^^^ CHECK THIS ^^^^
echo.
echo This script will create symlinks in the current directory
echo  pointing to each file/directory in %otherDir%
echo                                      ^^^^ CHECK THIS ^^^^
echo.
echo It should not overwrite any existing files/links.
echo It must run this as administrator to work.
pause
rem Directories
for /f "delims=|" %%f in ('dir /b /ad %otherDir%') do mklink /d "%%f" "%otherDir%%%f"
rem Files
for /f "delims=|" %%f in ('dir /b /a-d %otherDir%') do mklink "%%f" "%otherDir%%%f"
echo Done.
pause