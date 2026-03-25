# update_apps
 
Скрипты для обновления всех установленных приложений в системе.
 
---
 
## Файлы
 
- [`update_apps.sh`](update_apps.sh) — для Linux и macOS
- [`update_apps.ps1`](update_apps.ps1) — для Windows
 
---
 
## Использование
 
### Linux / macOS
 
```bash
chmod +x update_apps.sh
./update_apps.sh
```
 
Запуск в отдельном окне терминала:
 
```bash
./update_apps.sh --terminal
```
 
### Windows
 
```powershell
.\update_apps.ps1
```
 
Запуск в отдельном окне:
 
```powershell
.\update_apps.ps1 -ShowTerminal
```
 
---
 
## Что делает скрипт
 
**Linux (Ubuntu)** — выполняет:
```bash
sudo apt list --upgradable -a
sudo apt update
sudo apt full-upgrade -y
```
 
**macOS** — выполняет:
```bash
sudo softwareupdate -ia
```
Если установлен Homebrew — дополнительно `brew update && brew upgrade`.
 
**Windows** — выполняет:
```powershell
winget upgrade --all
```
 
---
 
## Требования
 
| ОС | Требование |
|----|-----------|
| Linux | `apt`, `dnf` или `pacman` |
| macOS | встроенный `softwareupdate`, опционально `brew` |
| Windows | `winget` (App Installer из Microsoft Store) |
 
---
 
## Автозапуск
 
**Linux / macOS (cron):**
```bash
crontab -e
# добавить строку — каждый день в 10:00:
0 10 * * * /path/to/update_apps.sh >> ~/update.log 2>&1
```
 
**Windows (Task Scheduler):**
- Программа: `powershell.exe`
- Аргументы: `-ExecutionPolicy Bypass -File "C:\path\to\update_apps.ps1"`
 