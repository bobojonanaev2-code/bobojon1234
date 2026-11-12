# 04. PostgreSQL

Развёртывание PostgreSQL 15 через Docker Compose с инициализацией через `init.sql`, healthcheck и bind-mounts.

## Задание

Источник: [content/Docker/DockerCompose/PostgresSQL.md](https://gitflic.ru/project/rurewa/mfua/blob?file=content/Docker/DockerCompose/PostgresSQL.md&branch=master)

## Что сделано

- Создан `compose.yaml` с сервисом **postgres**:
  - Образ `postgres:15`, container_name `my-postgres`
  - Порты: `5432:5432`
  - БД `mydatabase`, пользователь `myuser`, пароль `mypassword`
- Настроены bind-mounts:
  - `./scripts/init.sql` → `/docker-entrypoint-initdb.d/init.sql` (инициализация)
  - `./backups` → `/backups` (папка для бэкапов)
- Настроен `healthcheck` через `pg_isready`
- Проект запущен: `docker compose up -d`
- Проверено подключение через `psql`: таблица `users` создана, тестовые данные (Иван Иванов, Мария Петрова) вставлены

## Команды

```bash
docker compose ls
docker compose up -d
docker compose ps
docker compose logs postgres
docker compose config
docker compose stop
docker compose start
docker exec -it my-postgres psql -U myuser -d mydatabase
docker compose down
docker compose down -v
```

## Доступ

- PostgreSQL: `localhost:5432`
- БД: `mydatabase`, пользователь: `myuser`, пароль: `mypassword`

## Скриншоты

### 1. Запуск проекта
![docker compose up](screenshots/01-up.png)

### 2. Статус контейнера
![docker compose ps](screenshots/02-ps.png)

### 3. Логи PostgreSQL
![Логи](screenshots/03-logs.png)

### 4. Попытка подключения / промежуточный шаг
![Промежуточный шаг](screenshots/04-psql-attempt.png)

### 5. Подключение к БД и таблица `users`
![psql](screenshots/05-psql-users.png)