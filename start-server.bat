@echo off
REM Startet einen lokalen Webserver und oeffnet die Webseite
cd /d "%~dp0"
where python >nul 2>nul && (start "" http://localhost:8765/ && python -m http.server 8765) || (where py >nul 2>nul && (start "" http://localhost:8765/ && py -m http.server 8765)) || echo KEIN Python gefunden! Bitte index-static.html per Doppelklick oeffnen.
pause
