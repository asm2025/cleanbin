@echo off
cd /d "%cd%"
echo cleaning %cd%...

REM Visual Studio...
echo cleaning pkg...
FOR /d /r . %%d IN (pkg\) DO @IF EXIST "%%d" rd /s /q "%%d"
echo cleaning pkgobj...
FOR /d /r . %%d IN (pkgobj\) DO @IF EXIST "%%d" rd /s /q "%%d"

REM Other
echo cleaning obj...
FOR /d /r . %%d IN (obj\) DO @IF EXIST "%%d" rd /s /q "%%d"
del /F /Q /S *.tmp 2>NUL
del /F /Q /S *.locked 2>NUL
del /F /Q /S *.lock 2>NUL
del /F /Q /S *.lck 2>NUL
del /F /Q /S *.log 2>NUL
del /F /Q /S *.iml 2>NUL
del /F /Q /S *.launch 2>NUL
del /F /Q /S UpgradeLog.ht* 2>NUL
del /F /Q /S .DS_Store 2>NUL
del /F /Q /S Thumbs.db 2>NUL
del /F /Q /S local.properties 2>NUL
del /F /Q /S .externalNativeBuild 2>NUL
del /F /Q /S .project 2>NUL
del /F /Q /S .classpath 2>NUL

echo done
