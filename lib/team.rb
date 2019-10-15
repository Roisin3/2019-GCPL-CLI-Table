require_relative './scraper.rb'
require_relative './cli.rb'

class Team
  attr_reader :team_name, :games_played, :wins, :losses, :draws, :points, :goals_for, :goals_against
  @@all = []

  def initialize(team_name, games_played, wins, losses, draws, points, goals_for, goals_against)
    @team_name = team_name
    @games_played = games_played
    @wins = wins
    @losses = losses
    @draws = draws
    @points = points
    @goals_for = goals_for
    @goals_against = goals_against
    @@all << self
  end

  def self.all
    @@all
  end


end

def team_array_build(array)
  array.each do |team_data|
    team_name = team_data[0].strip
    games_played = team_data[1]
    wins = team_data[2]
    losses = team_data[3]
    draws = team_data[4]
    points = team_data[5]
    goals_for = team_data[6]
    goals_against = team_data[7]
    Team.new(team_name, games_played, wins, losses, draws, points, goals_for, goals_against)
  end
end
