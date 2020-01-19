# MySQL2SQLiteWin
## MySQL to SQLite converter for Windows

**usage:**<br/>
copy a mysqldump-file (with .sql-extension) to the same directory and execute start.bat<br/>
This will convert the sql-file to a sqlite3 compatible output.db-file.

**prerequirements:**<br/>
sqlite3.exe and awk.exe in same directory<br/>
sqlite3.exe can be found at [https://www.sqlite.org/2019/sqlite-tools-win32-x86-3300100.zip]<br/>
awk.exe can be found in gawk-3.1.6-1-bin.zip at [http://gnuwin32.sourceforge.net/packages/gawk.htm]<br/>

**notes:**<br/>
I have tested it with a phpBB database and DB Browser from here: [https://github.com/sqlitebrowser/sqlitebrowser]<br/>
in comparison with linux, the windows version changes the encoding from UTF8, so newline-behaviour can be different. if this is important to you, you could rewrite the batch script for PowerShell and configure PowerShell for UTF8 standard encoding.
