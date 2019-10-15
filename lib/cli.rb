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

def team_selector
  input = gets.strip.to_i
  input -= 1
  if input <= 18
    table = "Team Name: #{Team.all[input].team_name}\t Games Played: #{Team.all[input].games_played}\n Wins:#{Team.all[input].wins}\t Losses: #{Team.all[input].losses}\t Draws: #{Team.all[input].draws}\t Points: #{Team.all[input].points}\n Goals For: #{Team.all[input].goals_for}\t Goals Against: #{Team.all[input].goals_against}"
    puts table
  else
    puts "Please select a valid team"
    team_selector
  end
end

def choose_again
  puts "Would you like to see a new team? Y/N"
  input = gets.strip
  input = input.upcase
  if input == "Y"
    table_printer(@all_team_data_save)
    team_selector
    choose_again
  elsif input == "N"
    puts "Thank you!"
  else
    puts "Please select Y or N"
    choose_again
  end
end

def print
  cli_printer
  table_printer(@all_team_data_save)
  team_array_build(@all_team_data_save)
  team_selector
  choose_again
end

