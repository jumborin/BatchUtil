@echo off

REM ==========================================================
REM JDK����K�v�ȃ��W���[���̂ݑg�ݍ���JRE���쐬����B
REM ==========================================================

REM JDK11��Path��ϐ��ɐݒ肷��
SET JDK_PATH="C:\Program Files\Java\jdk-11.0.2\jmods"

REM JRE���o�͂���t�H���_
SET OUTPUT_DIR=jre-min


REM JRE���쐬����
jlink --compress=2 --module-path %JDK_PATH% --add-modules java.base,java.sql,java.desktop --output %OUTPUT_DIR%

