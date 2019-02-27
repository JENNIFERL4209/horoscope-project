require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/result' do
    @user_sign = params[:sign]
    # @user_day = paramas[:day]
    # @user_sign.get_info
    erb :result
  end
  
  
end
