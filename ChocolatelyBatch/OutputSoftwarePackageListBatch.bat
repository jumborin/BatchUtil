@echo off

REM =========================================================================
REM Chocolatey�ŃC���X�g�[���\�ȃ\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
REM =========================================================================

REM Chocolatey�ŃC���X�g�[���\�ȃ\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
choco list > CanInstallSoftwarePackageList.txt

REM Chocolatey�ŃC���X�g�[���ς̃\�t�g�E�F�A�p�b�P�[�W���X�g���o�͂���B
choco list -lo > InstalledSoftwarePackageList.txt
echo on