require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base

  
get '/peeps' do
  p ENV
        
@peeps = Peep.all
  erb :'peeps/index'
end

get 'peeps/new' do
  erb :"peeps/new"
end


post '/peeps' do
  Peep.create(url: params[:url])
  redirect '/peeps'
end


run! if app_file == $0
end
