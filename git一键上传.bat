@echo off

:: https://blog.csdn.net/ouyang_peng/article/details/84587186

:: ��ȡ��ǰ�ű���·��
cd /d %~dp0
:: �Զ��ύ
git add --all 
 git commit -m "bat�������Զ�����:%date:~0,10%,%time:~0,8%" 
::  git commit -m "%commitMessage%" 
git push -u cdn main
@echo �Ѿ����,

SET daoTime=3
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo �ϴ�Git��� ,����ʱ�˳�: %daoTime%��
if %daoTime%==0 (exit) else (goto dao)