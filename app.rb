require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base

  get '/peeps' do
  p ENV
  
  @peeps = Peep.all
  erb :'peeps/index'
end

  run! if app_file == $0
end