require 'sinatra'
require 'sinatra/reloader'

get '/hello/:name' do
  "Hello #{ params[:name] }"
end

get '/post' do
  erb :post
end

get '/calc' do
  erb :calc_form
end

get '/calc/result' do
  params[:x]
  # erb :calc_result
end

get '/animals' do
  @animals = ["cat", "dog", "pig", "monkey", "dragon"]
  erb :animals
end