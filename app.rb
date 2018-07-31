require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  post '/fav_food' do
    @name = params[:username]
    @fav_food= params[:food]
    erb :food
end
end