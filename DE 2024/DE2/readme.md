# Home task data engineering


## Встановлення PostgreSQL

Нижче наведено кроки для встановлення PostgreSQL на вашому комп'ютері.

### Windows

1. Завантажте встановлювач PostgreSQL з [офіційного веб-сайту](https://www.postgresql.org/download/windows/).

2. Відкрийте завантажений встановлювач.

3. Оберіть потрібні опції під час встановлення, такі як місце встановлення, порт, пароль адміністратора тощо.

4. Завершіть встановлення PostgreSQL.

5. Після встановлення ви можете запустити PostgreSQL через "Start Menu" або "Services". Переконайтеся, що служба PostgreSQL запущена.

6. Для перевірки встановлення відкрийте командний рядок (Command Prompt) і введіть:

   ```sh
   psql --version

## База даних для гри Minecraft

### Структура бази даних
 Таблиця minecraft:
 Таблиця Items:
 Таблиця Player_Items:
### Ключі
Основний ключ (Primary Key):
  minecraft: player_id
  Items: item_id
Зовнішній ключ (Foreign Key):
  Player_Items: player_id посилається на minecraft(player_id)
  Player_Items: item_id посилається на Items(item_id)
### Взаємозв'язки
Player_Items: Зв'язок багато-до-багатьох між гравцями (minecraft) та предметами (Items)
