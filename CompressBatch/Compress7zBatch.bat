@echo off

REM ===============================================================
REM ���k�t�@�C����{�����t8���̃p�X���[�h�t��zip�t�@�C���Ƃ��č쐬����B
REM �O������Ƃ��āA���t�H���_��7za.exe���i�[����Ă��邱�ƁB
REM ===============================================================

REM �{�����t8��(YYYYMMDD)
SET YYYYMMDD=%DATE:/=%

REM ���k��̃t�@�C����
SET COMPRESS_FILE_NAME=%YYYYMMDD%_compress.7z

REM ���k�Ώۂ̃t�H���_
SET COMPRESS_DIR=7z

REM �𓀃p�X���[�h(�{�����t8��)
SET PASS=%YYYYMMDD%

REM 7zip���g���Ĉ��k�t�@�C�����쐬����
7za.exe a -t7z -p%PASS% %COMPRESS_FILE_NAME% %COMPRESS_DIR%

