require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @pirate = Pirate.new(params[:pirate])

    params[:pirate][:ships].each do |ship|
      Ship.new(ship)
    end

    @ships = Ship.all
    erb :new
  end

end
