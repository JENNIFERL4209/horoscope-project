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
    @user_sign = zodiac_sign(@user_date) # return sign string
    @daily_horoscope_hash = get_info # return information in hash/array from
    @user_compatibility = get_compatibility(@user_sign)
    @user_compatibility_hash = get_compatibility_info
    @user_lucky_number = get_lucky_number(@user_sign)
    @user_lucky_number_fact = get_lucky_number_fact(@user_lucky_number)
    erb :result
  end
  
  
end
