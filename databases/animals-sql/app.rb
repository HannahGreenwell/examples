require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'sqlite3'
require 'colorize'

def db_query(sql)
  db = SQLite3::Database.new('database.db') # Connect to the database
  db.results_as_hash = true
  puts sql.red
  result = db.execute(sql)
  db.close # Close the database connection
  result
end

get '/' do
  redirect '/animals'
end

get '/animals' do
  # Index page
  @result = db_query('SELECT * FROM animals;')

  erb :index
end

post '/animals' do
  sql = "INSERT INTO animals(first_name, last_name, description, species, roundness, alive, age, image_url)
    VALUES(
        '#{params[:first_name]}',
        '#{params[:last_name]}',
        '#{params[:species]}',
        '#{params[:description]}',
        #{params[:roundness]},
        #{params[:alive]},
        #{params[:age]},
        '#{params[:image_url]}'
    );"

  db_query(sql)

  redirect "/animals"
end

get '/animals/new' do
  erb :new
end

get '/animals/:id/edit' do
  @animal = db_query("SELECT * FROM animals WHERE id = #{params[:id]};")
  @animal = @animal.first

  erb :edit
end

get '/animals/:id/delete' do
  sql = "DELETE FROM animals WHERE id = #{params[:id]};"
  db_query(sql)

  redirect "/animals"
end

post '/animals/:id' do
  sql = "UPDATE animals SET
    first_name = '#{params[:first_name]}',
    last_name = '#{params[:last_name]}',
    species = '#{params[:species]}',
    description = '#{params[:description]}',
    roundness = #{params[:roundness]},
    alive = #{params[:alive]},
    age = #{params[:age]},
    image_url = '#{params[:image_url]}'
  WHERE id = #{params[:id]};"

  db_query(sql)

  redirect "/animals/#{params[:id]}"
end

get '/animals/:id' do
  # Show page
  @animal = db_query("SELECT * FROM animals WHERE id = #{params[:id]};")
  @animal = @animal.first

  erb :show
end
