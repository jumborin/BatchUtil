@echo off

REM ==========================================================
REM �w��t�H���_�����z�h���C�u�ɂ���B
REM ==========================================================

SET VIRTUAL_DRIVE=C:\VirtualD
SET DRIVE_PATH=D:

REM 
IF EXIST %VIRTUAL_DRIVE% (
  mkdir %VIRTUAL_DRIVE%
)

REM ���z�h���C�u���쐬����B
subst %DRIVE_PATH% %VIRTUAL_DRIVE%