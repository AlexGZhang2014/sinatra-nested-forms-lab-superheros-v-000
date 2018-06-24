class Team
  attr_accessor :name, :motto, :members
  
  TEAMS = []
  
  def self.all
    TEAMS
  end
  
  def initialize(params)
    @name = params[:name]
    @motto =s params[:motto]
    @members = params[:members]
    TEAMS << self
  end
end