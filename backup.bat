@echo off

REM バックアップ元フォルダ
set SOURCE_DIR=C:\Users\jumborin\Desktop\test

REM バックアップ先フォルダ
set DIST_DIR=C:\Users\jumborin\Desktop\test2

REM コピー対象のファイルをログに出力する。
xcopy %SOURCE_DIR% %DIST_DIR% /E /L /H /R /K /-Y /B > copyLog.log

REM コピーする
xcopy %SOURCE_DIR% %DIST_DIR% /E /F /H /R /K /-Y /B
