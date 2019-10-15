require_relative '../lib/scraper.rb'
require_relative '../lib/team.rb'

def table_printer(array)
  counter = 0 
  array.map do |team|
    counter += 1
    puts "#{counter}. #{team[0]}"
  end
  puts "Please select a team(1 - 18):"
end

def cli_printer
  puts "Welcome to 2019 GCPL table printer!"
  puts "Select a team to view:"
end

cli_printer
table_printer(all_team_data_save)
team_array_build(all_team_data_save)

def team_selector
  input = gets.chomp
  input = input.to_i - 1
  table = " Team Name: #{Team.all[input].team_name}\t Games Played: #{Team.all[input].games_played}\t Wins:#{Team.all[input].wins}\n Losses: #{Team.all[input].losses}\t Draws: #{Team.all[input].draws}\t Points: #{Team.all[input].points}\n Goals For: #{Team.all[input].goals_for}\t Goals Against: #{Team.all[input].goals_against}"
  puts table
end

team_selector
