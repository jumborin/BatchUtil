@echo off

REM ==========================================================
REM C♯を名称を指定してコンパイルする。
REM 利用想定：バッチコマンドの内容を知られたくない場合等
REM 実行環境：Windows8.1またはWindows10
REM ==========================================================

REM C#をコンパイルする。
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:execute.exe /t:winexe *.cs