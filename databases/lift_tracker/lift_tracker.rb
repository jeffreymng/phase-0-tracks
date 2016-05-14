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

def add_exercise(db)

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

  db.execute("INSERT INTO lifts (lift_date, bodypart_id, exercise, reps1, weight1, reps2, weight2, reps3, weight3) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)", [exercise_date, body_focus, exercise, reps1, weight1, reps2, weight2, reps3, weight3])

end

def lifts_on_date(db, date)

  puts "Here are all your lifts for #{date}."

  on_date = db.execute("SELECT lifts.exercise, lifts.reps1, lifts.weight1, lifts.reps2, lifts.weight2, lifts.reps3, lifts.weight3, bodypart.name FROM lifts JOIN bodypart ON lifts.bodypart_id = bodypart.id WHERE lift_date='#{date}';")

  on_date.each do |lifts|
    puts "Lift: #{lifts['exercise']}"
    puts "1st Set: #{lifts['reps1']} x #{lifts['weight1']} lbs"
    puts "2nd Set: #{lifts['reps2']} x #{lifts['weight2']} lbs"
    puts "3rd Set: #{lifts['reps3']} x #{lifts['weight3']} lbs"
  end

end

def print_all(db)

  puts "Here is a list of all your lifts."

  all_lifts = db.execute("SELECT * FROM lifts JOIN bodypart ON lifts.bodypart_id = bodypart.id;")

  all_lifts.each do |lifts|
    puts "Date: #{lifts['lift_date']}"
    puts "Body Part Exercised: #{lifts['name']}"
    puts "Lift: #{lifts['exercise']}"
    puts "1st Set: #{lifts['reps1']} x #{lifts['weight1']} lbs"
    puts "2nd Set: #{lifts['reps2']} x #{lifts['weight2']} lbs"
    puts "3rd Set: #{lifts['reps3']} x #{lifts['weight3']} lbs"
  end

end

def delete(db, date, exercise)

  db.execute("DELETE FROM lifts WHERE lift_date='#{date}' AND exercise='#{exercise}';")

end

def modify(db)

  puts "What is the date of the lift you would like to modify?"
    date = gets.chomp

  lifts_on_date(db, date)

  puts "Which lift would you like to modify?"
    lift_to_modify = gets.chomp

  puts "What would you like to change this to?"
    modified = gets.chomp

  puts "Please enter the updates for each."

  puts "What did you work on? (Enter '1' for upper body, '2' for back, or '3' for legs.)"
    body_focus = gets.chomp.to_i
  until body_focus == 1 || body_focus == 2 || body_focus == 3
    puts "That is not a valid answer. Please enter '1' for upper body, '2' for back, or '3' for legs."
      body_focus = gets.chomp.to_i
  end

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

  db.execute("UPDATE lifts SET exercise='#{modified}', bodypart_id='#{body_focus}', reps1='#{reps1}', reps2='#{reps2}', reps3='#{reps3}', weight1='#{weight1}', weight2='#{weight2}', weight3='#{weight3}' WHERE lift_date='#{date}' AND exercise='#{lift_to_modify}'")

end

puts "Welcome to the lift tracker. Please type 'help' for a list of commands or, if you already know the commands, type in the command you would like to execute. Type 'end' to exit."

program_end = false

until program_end == true

  user_input = gets.chomp.downcase

  if user_input == "help"
    puts "Type 'add' to add an exercise."
    puts "Type 'date' to see all exercises you performed on a certain date."
    puts "Type 'print all' to see all your exercises tracked so far."
    puts "Type 'delete' to delete a certain exercise on a date. Be careful when using delete as this deletes the entry forever and you can not get it back."
    puts "Type 'modify' to modify a certain exercise on a date."
  elsif user_input == "end"
    program_end = true
  elsif user_input == "add"
    add_exercise(lifts)
    puts "Next command?"
  elsif user_input == "print all"
    print_all(lifts)
    puts "Next command?"
  elsif user_input == "date"
    puts "What date would you like to see the lifts for? (MM/DD/YYYY)"
      user_date = gets.chomp
    lifts_on_date(lifts, user_date)
    puts "Next command?"
  elsif user_input == "delete"
    puts "What is the date of the exercise you would like to delete?"
      delete_date = gets.chomp
    puts "What is the exercise you would like to delete?"
      delete_exercise = gets.chomp
    delete(lifts, delete_date, delete_exercise)
    puts "Next command?"
  elsif user_input == "modify"
    modify(lifts)
    puts "Next command?"
  else
    puts "That is not a valid input. Please try again."
  end

end


# DRIVER CODE
# add_exercise(lifts)
# lifts_on_date(lifts, "11/11/1111")
# print_all(lifts)
# delete(lifts, "11/11/1111", "squats")
# print_all(lifts)
# modify(lifts)
# puts "--------------"
# print_all(lifts)