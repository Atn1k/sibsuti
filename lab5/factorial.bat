@echo off
chcp 1251
if [%1]==[] (
    @echo ������� ��������!
    exit /b
)


call :factorial %1
echo %RESULT%
exit /b

rem ������� ��� �������� �������� ����������
rem ����:
rem       %1        �����, ��� �������� ���������� ���������� ���������
rem �����:
rem       %RESULT%  �������� ����������
:factorial

if %1 == 0 (
    set RESULT=1
    exit /b
)
if %1 == 1 (
    set RESULT=1
    exit /b
)



set /a PARAM=%1 - 1
call :factorial %PARAM%
set /a RESULT=%1 * %RESULT%
chcp 866
exit /b