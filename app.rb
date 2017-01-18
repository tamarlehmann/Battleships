require 'sinatra/base'

class Battleship < Sinatra::Base

  get '/' do
    'Lets battle!'
    erb(:index)
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb(:play)
  end

  run if app_file == $0
end
