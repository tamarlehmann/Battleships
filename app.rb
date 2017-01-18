require 'sinatra/base'

class Battleship < Sinatra::Base

  get '/' do
    "Lets battle!"
  end
end
