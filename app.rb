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

get '/cat' do
  send_file 'cat_photo.html'
end
