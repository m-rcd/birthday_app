require 'sinatra'

get '/hello' do
  'Hello there!'
end

get '/name' do
  "What's your name?"
  erb(:index)
end

get '/day' do
  erb(:index)
end

get'/month' do
  erb(:index)
end
