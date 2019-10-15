require_relative '../scraper.rb'
require_relative '../team.rb'

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

def team_selector
  input = gets.chomp
  input = input.to_i
  Team.all[input]
end

team_selector
