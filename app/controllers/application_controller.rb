require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
  post '/team' do
    binding.pry
    @team = Team.new(params[:team])
    params[:team][:members].each do |member_info|
      Superhero.new(member_info)
    end
    @superheroes = Superhero.all
    erb :team
  end

end
