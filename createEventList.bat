@echo off
REM �O����1�����猻�݂܂ł�PC�̋N����������яI��������CSV�`���ŏo�͂���B

REM -------------------------------------------------------
REM Path�ݒ�
REM -------------------------------------------------------

REM temp�t�@�C��1
set CSV_FILE=.\temp1.csv

REM temp�t�@�C��2
set CSV_FILE2=.\temp2.csv

REM �N�������ƏI�������݂̂��e�L�X�g�t�@�C���ɏo�͂���B
set RESULT_FILE=.\result.csv

REM -------------------------------------------------------
REM �����J�n
REM -------------------------------------------------------

REM �挎��1���̓��t�����߂�B
set year=%date:~0,4%
set month=%date:~5,2%
if %month% equ 01 (
  set month2=12
  set /a "year2 = year - 1"
) else if %month% geq 11 (
  set /a "month2 = month - 1"
  set year2=%year%
) else (
  set /a "month2_1 = month - 1"
  set month2=0%month2_1%
  set year2=%year%
)

REM CSV�`���ŃC�x���g���O��f���o���B
wmic ntevent where "(logfile='system' and timewritten >= '%year2%%month2%01' and (eventcode='6005' or eventcode='6006'))" list /format:CSV | find "," > %CSV_FILE%

REM for���̕ϐ���x���W�J����
setlocal enabledelayedexpansion
  REM �J���}�������Ă��镔�����A���_�[�X�R�A�Œu������B
  for /f "delims=" %%i in (%CSV_FILE%) do (
    set tempStr=%%i
    echo !tempStr:,,=,_,! >> %CSV_FILE2%
  )
  
REM �t�@�C���Ɍ��ʂ��o�͂���B
echo ����,�N,��,��,��,��,�b > %RESULT_FILE%
for /f "tokens=6,15 delims=," %%i in (%CSV_FILE2%) do (
  set tempTimeStr=%%j
  if %%i equ 6005 (
    echo "�N������",!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2!>> %RESULT_FILE%
  ) else if %%i equ 6006 (
    echo "�I������",!tempTimeStr:~0,4!,!tempTimeStr:~4,2!,!tempTimeStr:~6,2!,!tempTimeStr:~8,2!,!tempTimeStr:~10,2!,!tempTimeStr:~12,2! >> %RESULT_FILE%
  ) else (
    echo "�������Ȃ�"
  )
)
endlocal

REM -------------------------------------------------------
REM �㏈��
REM -------------------------------------------------------

REM �e���v�t�@�C�����폜����
del /Q %CSV_FILE%
del /Q %CSV_FILE2%

