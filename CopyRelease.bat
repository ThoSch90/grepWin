REM  ----------------------- Copy grepWin -----------------------

SET PROJECTNAME=grepWin
SET TARGET=
SET SOURCE="%~dp0"
SET TARGETSUBDIR=FilesAndDirectories
SET ABORTMSG=Abbruch
SET FIN=Projekt wurde erfolgreich kopiert!
SET MSG=Release-Dateien werden kopiert .. 

IF "%TARGET%" == "" (
	SET TARGET=D:\_Anwendungen\
)

@echo off


IF "%PROJECTNAME%" == "" GOTO ABORT 
ELSE GOTO COPYFILES

:COPYFILES
echo %MSG%
@echo off
xcopy "src\bin\Release\*.exe" "%TARGET%\%TARGETSUBDIR%\%PROJECTNAME%\" /S /F /R /Y /C
@echo on
  GOTO FIN

:ABORT
echo %ABORTMSG%

:FIN
echo %FIN%

REM pause