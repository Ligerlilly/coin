require 'sinatra'
require 'sinatra/reloader'
require './lib/coin'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/change' do
  change = (params['change'].to_i).coin
  @quarters = change[:q]
  @dimes = change[:d]
  @nickles = change[:n]
  @pennies = change[:p]
  erb :change
end
