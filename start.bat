@echo off
setlocal

for /f "delims=" %%a in ('dir /b *.sql') do (
 echo file "%%a" found. processing...
 if exist output.db (
  del output.db
 )
 awk -f mysql2sqlite "%%~nxa" | sqlite3 output.db
 goto filefound
)
echo no sql-file gefunden
pause
exit

:filefound
if exist output.db (
  del output.db
 )
pause
