@setlocal enabledelayedexpansion
@echo off

rem call ant -f ..\build-multiple.xml -propertyfile build.properties %*
rem calling separate build scripts, otherwise narrative generation does not work for MedMij target
cd Test
@echo | call build-MP9-3-0-0-beta-Test.bat
cd ..\Test-MedMij
call build-MP9-3-0-0-beta-Test-MedMij.bat

pause