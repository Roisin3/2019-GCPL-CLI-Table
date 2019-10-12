require "nokogiri"
require "open-uri"

site = "http://gcplsoccer.bonzidev.com/sam/standings/ss/schedule.php?v=3&divisionID=NDE4MjM5/*"

doc = Nokogiri::HTML(open(site))

all_team_data_save = []

# Scrapes only team standings from HTML table and shovels into array

def row_counter
  counter = 1
  while counter >=1 && counter <=18
    trimmed_table = doc.css("//tr")[counter] #selects rows with teams
    counter += 1
    textify = trimmed_table.css("td").text.gsub(/(\n|\t|\r)/, " ").gsub(/>\s*</, "><").squeeze(" ") # takes team rows and removes formatting
    text = textify.scan(/[a-zA-Z\s][^\d]+|\d+/) #splits data into parts
    stats_table = text.join(",").split(",") #transforms into usable array
    all_team_data_save << Array.new(stats_table) #saves data inside an array    
  end
end
