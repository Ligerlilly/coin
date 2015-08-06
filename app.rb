require 'sinatra'
require 'sinatra/reloader'
require 'coin'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end
