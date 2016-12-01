require 'sinatra/base'
require 'player'

class Tictactoe < Sinatra::Base
  get '/' do
    'Hello Tictactoe!'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
