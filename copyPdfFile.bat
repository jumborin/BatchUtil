@echo off

REM �R�s�[����B
mkdir pdfDir
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" pdfDir




