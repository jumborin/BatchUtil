@echo off

REM pdfDir���쐬���A���t�@�C���ȉ���PDF�t�@�C�����R�s�[����B
mkdir pdfDir
for /R %%f in (*.pdf) do xcopy /D /I /Y "%%f" pdfDir
