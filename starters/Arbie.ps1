Start-Process -FilePath "./starters/start postgres.bat" -NoNewWindow
Start-Process -FilePath "./starters/start arbie.bat" -Wait
Start-Process -FilePath "./starters/stop postgres.bat" -NoNewWindow