require 'sinatra/base'
require './lib/days_count'
class Birthday < Sinatra::Base
  enable :sessions

  counter = Counter.new

  get '/' do
    erb :index
  end

  post '/info' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]

    @result = counter.count(@day, @month)
    erb :result

  end

  run! if app_file == $0
end
