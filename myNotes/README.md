<a id="top"></a>

<div align="center">

# 📚 myNotes

### Моя коллекция учебных проектов

**От первых SQL-запросов до Docker, автоматизации и CI/CD.**  
Здесь собраны практические работы, исходный код, полезные скрипты и отчёты с результатами.

<p>
  <img alt="MySQL" src="https://img.shields.io/badge/MySQL-Учебные%20практики-0A759B?style=for-the-badge&logo=mysql&logoColor=white" />
  <img alt="Docker" src="https://img.shields.io/badge/Docker-Контейнеры-2496ED?style=for-the-badge&logo=docker&logoColor=white" />
  <img alt="Git" src="https://img.shields.io/badge/Git-Версионирование-F05032?style=for-the-badge&logo=git&logoColor=white" />
</p>

<p>
  <a href="#mysql">🗄️ Базы данных</a> &nbsp;•&nbsp;
  <a href="#devops">🐳 Docker и CI/CD</a> &nbsp;•&nbsp;
  <a href="#scripts">⚙️ Скрипты</a> &nbsp;•&nbsp;
  <a href="#structure">🗂️ Структура</a>
</p>

---

**6** практических по MySQL &nbsp;·&nbsp; **2** направления по Docker / CI/CD &nbsp;·&nbsp; **1** набор скриптов

</div>

<a id="mysql"></a>

## 🗄️ Базы данных · MySQL

Шесть последовательных практических работ: создание БД, запросы, представления, операции над множествами, нормализация и алиасы. В папках с практиками находятся отчёты `README.md`, SQL-файлы и скриншоты выполнения.

| № | Практическая работа | Ключевые темы | Перейти |
| :--: | --- | --- | :--: |
| **01** | **Основы MySQL и Docker** | Контейнер, создание БД и таблиц, `INSERT`, `UPDATE`, `DELETE`, дамп, логи | [📂 Открыть](mysql-docker-practice/) |
| **02** | **SQL-запросы и работа с данными** | `SELECT`, фильтрация, агрегаты, `GROUP BY`, `JOIN`, подзапросы, восстановление | [📂 Открыть](mysql-docker-practice-2/) |
| **03** | **Представления (VIEW)** | `CREATE VIEW`, обновляемые представления, `WITH CHECK OPTION`, права доступа | [📂 Открыть](mysql-view-practice/) |
| **04** | **Операции над множествами** | `UNION`, `EXCEPT`, `INTERSECT`, `CROSS JOIN`, `LEFT JOIN` | [📂 Открыть](products-mysql/) |
| **05** | **Нормализация данных (3NF)** | Аномалии данных, разделение таблиц, внешние ключи, перенос и проверка | [📂 Открыть](mysql-normalization-practice/) |
| **06** | **Алиасы в SQL** | Алиасы таблиц и столбцов, `JOIN`, подзапросы, `ORDER BY`, `HAVING` | [📂 Открыть](mysql-alias-practice/) |

> **Как смотреть практические:** открой нужную папку и начни с её `README.md`. В нём описаны шаги выполнения и показаны результаты на скриншотах.

<a id="devops"></a>

## 🐳 Docker, автоматизация и CI/CD

Отдельные каталоги для работы с контейнерами и инструментами разработки.

| Направление | Для чего | Перейти |
| --- | --- | :--: |
| **Docker Compose** | Учебные проекты и конфигурации, связанные с Docker Compose | [📂 `docker-compose-projects`](docker-compose-projects/) |
| **CI/CD** | Учебные материалы по автоматизации процессов разработки и доставки | [📂 `ci-cd-projects`](ci-cd-projects/) |

<a id="scripts"></a>

## ⚙️ Полезные скрипты

### `myscript` — обновление приложений

Набор скриптов для запуска обновления установленных приложений одной командой на разных операционных системах.

| Файл | Платформа | Ссылка |
| --- | --- | :--: |
| `update_apps.sh` | Linux / macOS · Bash | [Посмотреть](myscript/update_apps.sh) |
| `update_apps.ps1` | Windows · PowerShell | [Посмотреть](myscript/update_apps.ps1) |
| `Readme.md` | Описание и инструкции | [Читать](myscript/Readme.md) |

<a id="structure"></a>

## 🗂️ Навигация по репозиторию

```text
myNotes/
├── ci-cd-projects/                 # CI/CD
├── docker-compose-projects/       # Docker Compose
├── myscript/                      # Bash и PowerShell
├── mysql-alias-practice/          # Алиасы SQL
├── mysql-docker-practice/         # Основы MySQL
├── mysql-docker-practice-2/       # SQL-запросы
├── mysql-normalization-practice/  # Нормализация 3NF
├── mysql-view-practice/           # Представления VIEW
├── products-mysql/                # Операции над множествами
└── Readme.md                      # Эта страница
```

## 🧰 Что используется в проектах

<p>
  <img alt="MySQL 8" src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square&logo=mysql&logoColor=white" />
  <img alt="Docker" src="https://img.shields.io/badge/Docker-CLI-2496ED?style=flat-square&logo=docker&logoColor=white" />
  <img alt="Git" src="https://img.shields.io/badge/Git-GitHub-F05032?style=flat-square&logo=git&logoColor=white" />
  <img alt="VS Code" src="https://img.shields.io/badge/VS_Code-Editor-007ACC?style=flat-square&logo=visualstudiocode&logoColor=white" />
  <img alt="Bash" src="https://img.shields.io/badge/Bash-Terminal-4EAA25?style=flat-square&logo=gnubash&logoColor=white" />
  <img alt="PowerShell" src="https://img.shields.io/badge/PowerShell-Scripts-5391FE?style=flat-square&logo=powershell&logoColor=white" />
</p>

---

<div align="center">

**Учусь на практике · сохраняю результаты · развиваю проекты**

<sub>myNotes — личный учебный архив. Содержимое папок пополняется по мере выполнения новых заданий.</sub>

<p><a href="#top">↑ К началу</a></p>

</div>
