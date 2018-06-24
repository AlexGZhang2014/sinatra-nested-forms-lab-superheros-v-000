class Superhero
  attr_accessor :name, :power, :bio
  
  SUPERHEROES = []
  
  def self.all
    SUPERHEROES
  end
end