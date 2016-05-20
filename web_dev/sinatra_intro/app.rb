# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# A /contact route that displays an address

get '/contact' do
  "The White House<br>
  1600 Pennsylvania Avenue NW<br>
  Washington, DC 20500"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  person_name = params[:person_name]
  if person_name
    "Good job, #{person_name}!"
  else
    "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result

get '/add_numbers/:number1/plus/:number2' do
  result = params[:number1].to_i + params[:number2].to_i
  result.to_s
end

# Make a route that allows the user to search the database in some way

get '/all_students/:campus' do
  campus = db.execute("SELECT * FROM students WHERE campus=?", ["#{params[:campus]}".upcase])
  print = ""
  campus.each do |student|
    print << "Name: #{student['name']}<br>"
    print << "Age: #{student['age']}<br><br>"
  end
  print
end