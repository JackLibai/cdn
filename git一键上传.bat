@echo off

:: ��ȡ��ǰ�ű���·��
cd /d %~dp0
:: �Զ��ύ
git init 
git add . 
 git commit -m "bat�������Զ�����:%date:~0,10%,%time:~0,8%" 
::  git commit -m "%commitMessage%" 
git push origin master
@echo �Ѿ����,

SET daoTime=60
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo �ϴ�Git��� ,����ʱ�˳�: %daoTime%��
if %daoTime%==0 (exit) else (goto dao)