# 05. Pipeline CI на Rust в GitHub Actions

CI-пайплайн для Rust-приложения: форматирование (rustfmt), линтер (clippy), тесты, сборка Docker-образа.

## Задание

Источник: [content/DevOps/CI_CD/Pipelines/Rust_CI_1.md](https://gitflic.ru/project/rurewa/mfua/blob?file=content/DevOps/CI_CD/Pipelines/Rust_CI_1.md&branch=master)
Отдельный репозиторий: [bobojonanaev2-code/my-rust-app](https://github.com/bobojonanaev2-code/my-rust-app)

## Что сделано

- Создан публичный репозиторий `my-rust-app`
- Workflow `.github/workflows/rust-ci.yml` с тремя jobs:
  - **lint** — `cargo fmt --check`, `cargo clippy -- -D warnings`
  - **test** — `cargo check`, `cargo build` (debug + release), `cargo test`
  - **docker-build** — сборка Docker-образа через Buildx, сохранение как artifact, запуск для проверки
- Dockerfile — multi-stage (builder `rust:1-slim` → `debian:stable-slim`)
- Проверено: зелёные галочки во всех jobs
- Локально собран и запущен Docker-образ

## Структура проекта

```
my-rust-app/
├── .github/workflows/rust-ci.yml
├── src/main.rs
├── Cargo.toml
├── Cargo.lock
├── Dockerfile
├── .dockerignore
├── .gitignore
└── README.md
```

## Код приложения

```rust
// src/main.rs
use std::io::{self, Write};

fn main() {
    println!("Hello from Rust in Docker! 🦀");
    io::stdout().flush().unwrap();
    std::thread::sleep(std::time::Duration::from_millis(200));
}
```

## Локальная сборка

```bash
docker build -t my-rust-app:latest .
docker run --rm my-rust-app:latest
# → Hello from Rust in Docker! 🦀
```

## Результат

- Actions: https://github.com/bobojonanaev2-code/my-rust-app/actions
- Все jobs — ✅

## Скриншоты

### 1. Создание репозитория
![Создание репозитория](screenshots/01-create-repo.png)

### 2. Клонирование
![git clone](screenshots/02-clone.png)

### 3. Структура проекта
![Структура](screenshots/03-structure.png)

### 4. Push
![git push](screenshots/04-push.png)

### 5. Список workflow в Actions
![Actions](screenshots/05-actions-list.png)

### 6. Jobs (lint, test, docker-build)
![Jobs](screenshots/06-jobs.png)

### 7. Вывод линтера (rustfmt + clippy)
![Lint](screenshots/07-lint-output.png)

### 8. Вывод cargo test
![Test](screenshots/08-test-output.png)

### 9. Локальная сборка Docker-образа
![docker build](screenshots/09-docker-build.png)

### 10. Запуск контейнера
![docker run](screenshots/10-docker-run.png)