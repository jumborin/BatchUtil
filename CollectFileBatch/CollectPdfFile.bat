@echo off

REM ===============================================================
REM pdfDir���쐬���A���t�@�C���ȉ���PDF�t�@�C�����R�s�[����B
REM ===============================================================

REM �t�H���_�����`
SET RESULT_DIR=pdfDir

REM �t�H���_���쐬
mkdir %RESULT_DIR%

REM PDF�t�@�C�����R�s�[����B
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" %RESULT_DIR%
