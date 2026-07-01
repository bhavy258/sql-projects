🗃️ SQL Practice Assignments

A collection of SQL practice exercises covering SELECT fundamentals, filtering, aggregation, joins, subqueries, and window functions across four mini case studies: 🎵 Spotify, 🔌 Croma, ⚽ FIFA, and 🛒 Blinkit.

📑 Table of Contents
📁 Files
🗂️ Schema Overview
🧩 Topics Covered
▶️ How to Use
📝 Notes

📁 Files

IconFileDomainFocus🎵Spotify_Assignment.sqlMusic streamingSchema design, joins, subqueries, RANK(), correlated subqueries🔌Croma.sqlElectronics retailFiltering, LIKE patterns, joins, GROUP BY/HAVING, ROW_NUMBER()⚽Fifa.sqlFootball/World Cup statsAggregations, sorting, group-wise stats across two related tables🛒Blinkit.sqlGrocery/e-commerceAggregation (MIN/MAX/AVG/SUM), GROUP BY, filtering

🗂️ Schema Overview

🎵 Spotify (spotify database)

Four related tables built with CREATE TABLE + INSERT statements (data included in the script):

Users — user_id, username, email, password, registration_date
Playlists — playlist_id, playlist_name, user_id (FK), created_at
Tracks — track_id, track_name, artist_name, album_name, duration, release_date
PlaylistTracks — playlist_id (FK), track_id (FK), position

Questions are split into Basic, Intermediate, and Advanced tiers (30 total), progressing from simple filters to correlated subqueries, RANK() window functions, and multi-condition subquery logic.

🔌 Croma (croma database)

product_inventory — product_code, product_name, product_price, manufacturer_code
manufacturers — manufacturer_code, manufacturer_name


30 questions covering pattern matching (LIKE), price filtering, joins, GROUP BY/HAVING, ROW_NUMBER() for "top product per manufacturer," and basic INSERT/UPDATE statements.

⚽ FIFA (fifa database)

group_stats — team, group, rank, matches_played, wins, draws, losses, goals_scored, goals_against, points, expected_goal_scored, exp_goal_conceded, etc.
team_data — team, players_used, avg_age, games, minutes, goals, assists, cards, shots, passes_pct, fouls, offsides, aerials, etc.
data_metadescription — reference/metadata table


50 questions covering per-team stats, ranking within groups, and joined aggregations across group_stats and team_data.

🛒 Blinkit (blinkit database)

grocery_store — item_identifier, item_weight, item_fat_content, item_type, item_mrp, outlet_size, outlet_location_type, outlet_type, outlet_establishment_year, item_visibility, item_outlet_sales

51 questions focused on descriptive aggregation (min/max/avg/sum), unique values, filtering, and GROUP BY breakdowns by category/outlet attributes.

🧩 Topics Covered

CategoryConcepts🔍 FilteringSELECT, WHERE, aliasing, LIKE wildcards, BETWEEN, IN➕ AggregationCOUNT, SUM, AVG, MIN, MAX📊 GroupingGROUP BY / HAVING↕️ SortingORDER BY (single & multi-column, ASC/DESC)🔗 JoinsINNER JOIN / LEFT JOIN🧠 SubqueriesScalar & correlated subqueries🪟 Window FunctionsROW_NUMBER(), RANK()✍️ DMLINSERT, UPDATE

▶️ How to Use

✅ Run the CREATE DATABASE / USE statements at the top of each file.
✅ For Spotify, run the CREATE TABLE and INSERT statements included in the script to populate sample data.
✅ For Croma, FIFA, and Blinkit, load the corresponding source data (e.g., import CSV) into the referenced tables before running the queries — these scripts assume the tables already exist with data.
✅ Each numbered comment (-- 1., -- 2., ...) marks a question, followed by its solution query. Alternate/equivalent solutions are noted with -- or.

📝 Notes

💡 Queries are written for MySQL syntax (e.g., backticked reserved words like `group` and `rank` in the FIFA file).

⚠️ A couple of items are left unfinished/exploratory in the source (e.g., Spotify Advanced Q4, and a trailing incomplete query at the end of the Spotify file) — these can be treated as open exercises.
