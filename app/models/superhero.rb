class Superhero
  attr_accessor :name, :power, :bio
  
  SUPERHEROES = []
  
  def self.all
    SUPERHEROES
  end
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    SUPERHEROES << self
  end
end