require 'sinatra/base'

class Birthday < Sinatra::Base
  enable :sessions

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
    erb :result
  end

  run! if app_file == $0
end
