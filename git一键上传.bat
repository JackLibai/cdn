@echo off

:: https://blog.csdn.net/qq_41866776/article/details/103508581
:: https://blog.csdn.net/ouyang_peng/article/details/84587186

:: 获取当前脚本的路径
cd /d %~dp0
:: 自动提交
git add --all 
 git commit -m "bat批处理自动推送:%date:~0,10%,%time:~0,8%" 
::  git commit -m "%commitMessage%" 
git push -u origin main
@echo 已经完成,

SET daoTime=3
:dao
set /a daoTime=daoTime-1
ping -n 2 -w 500 127.1>nul
cls
echo 上传Git完成 ,倒计时退出: %daoTime%秒
if %daoTime%==0 (exit) else (goto dao)