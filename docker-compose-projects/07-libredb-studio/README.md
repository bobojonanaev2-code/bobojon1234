# 07. LibreDB Studio

Развёртывание веб-IDE для работы с базами данных LibreDB Studio через Docker Compose.

## Задание

Источник: [content/Docker/DockerCompose/LibreDB_Studio.md](https://gitflic.ru/project/rurewa/mfua/blob?file=content/Docker/DockerCompose/LibreDB_Studio.md&branch=master)

## Что сделано

- Создан `compose.yaml` с сервисом **libredb-studio**:
  - Образ `ghcr.io/libredb/libredb-studio:latest`
  - Порт `3000:3000`
  - Volume `libredb-data` → `/app/data`
  - Healthcheck через `wget --spider http://localhost:3000`
- Создан `.env` с обязательными переменными: `ADMIN_EMAIL`, `ADMIN_PASSWORD`, `JWT_SECRET`
- Проект запущен: `docker compose up -d`
- Встроенная SQLite-база `sample-employees.db` засеялась автоматически
- Выполнен вход в веб-интерфейс по адресу http://localhost:3000
- Проверена работа SQL-редактора

## Команды

```bash
docker compose ls
ss -tulpn | grep :3000
docker ps -a | grep libredb-studio
docker compose config
docker compose up -d
docker compose ps -a
docker compose logs --tail=20 libredb-studio
docker compose logs -f
docker compose down -v
docker image rm ghcr.io/libredb/libredb-studio:latest
```

## Доступ

- LibreDB Studio: http://localhost:3000
- Логин: `admin@libredb.org` / `YourStrongPassword123!`

## Файлы проекта

- `compose.yaml` — конфигурация сервиса
- `.env` — переменные окружения (email, password, JWT_SECRET)

## Скриншоты

### 1. Проверка активных проектов
![docker compose ls](screenshots/01-compose-ls.png)

### 2. Конфигурация
![docker compose config](screenshots/02-config.png)

### 3. Запуск проекта
![docker compose up](screenshots/03-up.png)

### 4. Статус контейнера
![docker compose ps](screenshots/04-ps.png)

### 5. Логи
![Логи](screenshots/05-logs.png)

### 6. Страница входа
![Вход](screenshots/06-login.png)

### 7. Главный экран
![Дашборд](screenshots/07-dashboard.png)

### 8. SQL-редактор
![Query Editor](screenshots/08-query.png)