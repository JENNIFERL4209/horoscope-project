require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do
    @user_date = params[:date] 
    @user_sign = zodiac_sign(@user_date)
    @daily_horoscope_hash = get_info
    erb :result
  end
  
  
end
