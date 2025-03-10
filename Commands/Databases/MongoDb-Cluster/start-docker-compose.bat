@echo off
docker compose up -d
powershell -ExecutionPolicy Bypass -File AddHosts.ps1

