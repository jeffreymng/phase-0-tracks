# Create a program to keep track of what lifts you performed on what dates.
# Store all info in a database
# Ask user for input
  # Date
  # What part of the body was worked on (upper body, back, legs) store in database as foreign key. Create separate database for this.
  # What exercises were performed
  # Number of sets
  # Number of reps
  # Weight lifted for each set
# Create method to call information from database based on date

require 'sqlite3'

lifts = SQLite3::Database.new("lifts.db")
lifts.result_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS lifts(
    id INTEGER PRIMARY KEY,
    lift_date VARCHAR(255),
    bodypart_id INT,
    exercise VARCHAR(255),
    sets INT,
    reps INT,
    weight INT,
    FOREIGN KEY (bodypart_id) REFERENCES bodypart(id),
  )
SQL