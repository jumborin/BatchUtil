@echo off

REM ==========================================================
REM C��𖼏̂��w�肵�ăR���p�C������B
REM ���s���FWindows8.1�܂���Windows10
REM ==========================================================

REM C#���R���p�C������B
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:BatchCommand\execute.exe /t:winexe BatchCommand\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Form\execute.exe /t:winexe Form\*.cs
C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc /out:Group\execute.exe /t:winexe Group\*.cs