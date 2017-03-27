require('json')
require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('./models/game')

get '/' do
  erb (:home)
end

get '/welcome' do
  erb (:welcome)
end

get '/:move1/:move2' do
  game = Game.new(params[:move1], params[:move2])
  @game = game.play()
  erb(:result)
end