require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    user_sign = paramas[:sign]
    user_day = paramas[:day]
    erb :result
  end
  
end
