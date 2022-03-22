require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "hello!"
end

get '/secret' do
  "I'll never tell you my secrets... or will I?"
end

get '/things' do
  "I have done some things."
end

get '/morethings' do
  "And these other things!"
end

get '/random-cat' do
  array = ["Amigo", "Misty", "Almond"] 
  @name = array[rand(3)]
 erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/give-name' do
  erb(:give_name)
end