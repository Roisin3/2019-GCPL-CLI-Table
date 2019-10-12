require "./scraper.rb"

# this class takes the data scraped and saves it as a series of nested hashed

class Hash_Creator
  @full_table_array = []  #saves array of team hashes
  @hashed_table = {} # saves nested hashes named after teams


  #creates a hash from scraped data stored in all_team_data_save and saves it in @full_table_array
  def team_hash_build(array)
    array.collect do |team_data|
      team_data.map do |stat|
        team_name = Hash.new
      team_name[:team_name] = team_data[0].strip
      team_name[:games_played] = team_data[1]
      team_name[:wins] = team_data[2]
      team_name[:losses] = team_data[3]
      team_name[:draws] = team_data[4]
      team_name[:points] = team_data[5]
      team_name[:goals_for] = team_data[6]
      team_name[:goals_against] = team_data[7]
      @full_table_array << team_name
      end
    end
    @full_table_array = @full_table_array.uniq #this is hideous and I hate it but it works
    @full_table_array
  end

  team_hash_build(all_team_data_save)

  def named_hash_table(table_hash)
    table_hash.each { |array| @hashed_table["#{array[:team_name].to_s}"] = array }
  end

  named_hash_table(table_hash)

end
