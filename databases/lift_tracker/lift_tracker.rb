# Create a program to keep track of what lifts you performed on what dates.
# Store all info in a database
# Ask user for input
  # Date
  # What part of the body was worked on (upper body, back, legs) store in database as foreign key. Create separate database for this.
  # What exercises were performed
  # Assuming 3 sets performed for each exercise
  # Number of reps
  # Weight lifted for each set
# Create method to call information from database based on date

require 'sqlite3'

lifts = SQLite3::Database.new("lifts.db")
lifts.results_as_hash = true

create_table_lifts = <<-SQL
  CREATE TABLE IF NOT EXISTS lifts(
    id INTEGER PRIMARY KEY,
    lift_date VARCHAR(255),
    bodypart_id INT,
    exercise VARCHAR(255),
    reps1 INT,
    weight1 INT,
    reps2 INT,
    weight2 INT,
    reps3 INT,
    weight3 INT,
    FOREIGN KEY (bodypart_id) REFERENCES bodypart(id)
  );
SQL

create_table_bodypart = <<-SQL
  CREATE TABLE IF NOT EXISTS bodypart(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    UNIQUE (name)
  );
SQL

lifts.execute(create_table_lifts)
lifts.execute(create_table_bodypart)
lifts.execute("INSERT OR IGNORE INTO bodypart (name) VALUES ('upper body');")
lifts.execute("INSERT OR IGNORE INTO bodypart (name) VALUES ('back');")
lifts.execute("INSERT OR IGNORE INTO bodypart (name) VALUES ('leg');")

def add_exercise(lifts)

  puts "Date of exercise?"
    exercise_date = gets.chomp
  puts "What did you work on? (Enter '1' for upper body, '2' for back, or '3' for legs.)"
    body_focus = gets.chomp.to_i
  puts "What exercise did you perform?"
    exercise = gets.chomp
  puts "First Set: How many reps?"
    reps1 = gets.chomp.to_i
  puts "First Set: How much weight did you use?"
    weight1 = gets.chomp.to_i
  puts "Second Set: How many reps?"
    reps2 = gets.chomp.to_i
  puts "Second Set: How much weight did you use?"
    weight2 = gets.chomp.to_i
  puts "Third Set: How many reps?"
    reps3 = gets.chomp.to_i
  puts "Third Set: How much weight did you use?"
    weight3 = gets.chomp.to_i

  lifts.execute("INSERT INTO lifts (lift_date, bodypart_id, exercise, reps1, weight1, reps2, weight2, reps3, weight3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", [exercise_date, body_focus, exercise, reps1, weight1, reps2, weight2, reps3, weight3])

end

