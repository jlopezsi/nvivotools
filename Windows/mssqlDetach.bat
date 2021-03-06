@echo off

rem Copyright 2016 Jonathan Schultz
rem
rem This program is free software: you can redistribute it and/or modify
rem it under the terms of the GNU General Public License as published by
rem the Free Software Foundation, either version 3 of the License, or
rem (at your option) any later version.
rem
rem This program is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
rem GNU General Public License for more details.
rem
rem You should have received a copy of the GNU General Public License
rem along with this program.  If not, see <http://www.gnu.org/licenses/>.

set DB=%1
IF "%DB%"=="" (
    set DB=nvivo
    )

    set INSTANCE=%2
IF "%INSTANCE%"=="" (
    set INSTANCE=QSRNVIVO10
    )

set server=%COMPUTERNAME%\%INSTANCE%
sqlcmd -S %server% -Q "EXEC sp_detach_db %DB%"
