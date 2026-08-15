@echo off
chcp 65001 >nul
setlocal
cd /d "%~dp0"

echo === HelloWorld build ^& run ===

REM locate javac/java: prefer PATH, fall back to JAVA_HOME
where javac >nul 2>&1
if errorlevel 1 (
    if defined JAVA_HOME (
        set "JAVAC=%JAVA_HOME%\bin\javac.exe"
        set "JAVA=%JAVA_HOME%\bin\java.exe"
    ) else (
        echo ERROR: javac not found. Install JDK 17 and set JAVA_HOME or PATH.
        exit /b 1
    )
) else (
    set "JAVAC=javac"
    set "JAVA=java"
)

echo Compiling src/Main.java with -encoding UTF-8 ...
"%JAVAC%" -encoding UTF-8 src/Main.java
if errorlevel 1 (
    echo BUILD FAILED
    exit /b 1
)

echo Running ...
"%JAVA%" -cp src Main
endlocal
