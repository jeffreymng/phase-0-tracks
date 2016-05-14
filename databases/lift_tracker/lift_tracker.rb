# Create a program to keep track of what lifts you performed on what dates.
# Store all info in a database
# Ask user for input
  # Date
  # What part of the body was worked on (upper body, back, legs) store in database as foreign key. Create separate database for this.
  # What exercises were performed
  # Assuming 3 sets performed for each exercise
  # Number of reps
  # Weight lifted for each set
# Create methods to call information from database

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
lifts.execute("INSERT OR IGNORE INTO bodypart (name) VALUES ('legs');")

def add_exercise(lifts)

  puts "Date of exercise? (MM/DD/YYYY)"
    exercise_date = gets.chomp
  puts "What did you work on? (Enter '1' for upper body, '2' for back, or '3' for legs.)"
    body_focus = gets.chomp.to_i
  until body_focus == 1 || body_focus == 2 || body_focus == 3
    puts "That is not a valid answer. Please enter '1' for upper body, '2' for back, or '3' for legs."
      body_focus = gets.chomp.to_i
  end
  puts "What exercise did you perform?"
    exercise = gets.chomp
  puts "First Set: How many reps? (Numbers Only)"
    reps1 = gets.chomp.to_i
  puts "First Set: How many pounds did you use? (Numbers Only)"
    weight1 = gets.chomp.to_i
  puts "Second Set: How many reps? (Numbers Only)"
    reps2 = gets.chomp.to_i
  puts "Second Set: How many pounds did you use? (Numbers Only)"
    weight2 = gets.chomp.to_i
  puts "Third Set: How many reps? (Numbers Only)"
    reps3 = gets.chomp.to_i
  puts "Third Set: How many pounds did you use? (Numbers Only)"
    weight3 = gets.chomp.to_i

  lifts.execute("INSERT INTO lifts (lift_date, bodypart_id, exercise, reps1, weight1, reps2, weight2, reps3, weight3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", [exercise_date, body_focus, exercise, reps1, weight1, reps2, weight2, reps3, weight3])

end

def lifts_on_date(lifts, date)
  puts "Here are all your lifts for #{date}."
  on_date = lifts.execute("SELECT lifts.exercise, lifts.reps1, lifts.weight1, lifts.reps2, lifts.weight2, lifts.reps3, lifts.weight3, bodypart.name FROM lifts JOIN bodypart ON lifts.bodypart_id = bodypart.id WHERE lift_date='#{date}';")
  on_date.each do |lifts|
    puts "Lift: #{lifts['exercise']}"
    puts "1st Set: #{lifts['reps1']} x #{lifts['weight1']} lbs"
    puts "2nd Set: #{lifts['reps2']} x #{lifts['weight2']} lbs"
    puts "3rd Set: #{lifts['reps3']} x #{lifts['weight3']} lbs"
  end
end

def print_all(lifts)
  puts "Here is a list of all your lifts."
  all_lifts = lifts.execute("SELECT * FROM lifts JOIN bodypart ON lifts.bodypart_id = bodypart.id;")
  all_lifts.each do |lifts|
    puts "Date: #{lifts['lift_date']}"
    puts "Body Part Exercised: #{lifts['name']}"
    puts "Lift: #{lifts['exercise']}"
    puts "1st Set: #{lifts['reps1']} x #{lifts['weight1']} lbs"
    puts "2nd Set: #{lifts['reps2']} x #{lifts['weight2']} lbs"
    puts "3rd Set: #{lifts['reps3']} x #{lifts['weight3']} lbs"
  end
end

puts "Welcome to the lift tracker. Please type 'help' for a list of commands or, if you already know the commands, type in the command you would like to execute."



# DRIVER CODE
# add_exercise(lifts)
# lifts_on_date(lifts, "11/11/1111")
# print_all(lifts)