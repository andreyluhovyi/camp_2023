# Home task data dase

## Installing PostgreSQL

Below are the steps to install PostgreSQL on your computer.

### Windows

1. Download the PostgreSQL installer from the [official website](https://www.postgresql.org/download/windows/).

2. Open the downloaded installer.

3. Choose the necessary options during installation, such as installation location, port, administrator password, etc.

4. Complete the PostgreSQL installation.

5. After installation, you can start PostgreSQL through the "Start Menu" or "Services". Make sure the PostgreSQL service is running.

6. To check the installation, open the Command Prompt and type:

   ```sh
   psql --version

## Database for Minecraft Game

### Database Structure

### Table `minecraft`:

- `player_id`: Unique identifier for players (INT)
- `player_name`: Player's name (VARCHAR(100))
- `game_mode`: Game mode (VARCHAR(50))
- `highest_score`: Player's highest score (INT)
- `total_play_time`: Player's total play time (TIME)
- `favorite_biome`: Player's favorite biome (VARCHAR(50))
- `number_of_deaths`: Number of deaths for the player (INT)
- `number_of_kills`: Number of kills by the player (INT)

### Table `Items`:

- `item_id`: Unique identifier for items (INT)
- `item_name`: Name of the item (VARCHAR(100))
- `item_type`: Type of the item (VARCHAR(50))
- `item_description`: Description of the item (TEXT)
- `item_rarity`: Rarity of the item (VARCHAR(50))
- `item_value`: Value of the item (INT)

### Table `Player_Items`:

- `player_id`: Foreign key referencing `minecraft(player_id)` (INT)
- `item_id`: Foreign key referencing `Items(item_id)` (INT)
- `quantity`: Quantity of the item owned by the player (INT)
- `item_condition`: Condition of the item (VARCHAR(50))
- `item_location`: Location of the item (VARCHAR(100))

### Keys

- **Primary Keys**:
  - `minecraft`: `player_id`
  - `Items`: `item_id`

- **Foreign Keys**:
  - `Player_Items`: `player_id` references `minecraft(player_id)`
  - `Player_Items`: `item_id` references `Items(item_id)`

### Relationships

- **Player_Items**: Many-to-many relationship between players (minecraft) and items (Items)

## Loading Data into the Database

Data has been inserted into three tables of the database:

- **Table `minecraft`**:
  - Information about players in the game, including their names, game modes, scores, play time, favorite biomes, and statistics.

- **Table `Items`**:
  - Information about items in the game, such as their names, types, descriptions, rarity, and value.

- **Table `Player_Items`**:
  - Display of players owning items in the game, with quantity, condition, and location specified.

This data insertion process populates the database tables for the Minecraft game with information about players, items, and their ownership.

## Creating a Database Dump

### Step 4: Creating a dump of the entire database

To create a dump of the entire database, the `pg_dump` command was used:

```sh
pg_dump -U postgres D:\hometask_db > hometask_db.sql








