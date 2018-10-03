def get_first_name_of_season_winner(data, season)
	contestant_name = ""
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
  		contestant.each do |stat, value|
  			if season_number == season
  				if value == "Winner"
  					contestant_name = contestant["name"]
  				end
  			end
  		end
  	end
  end
  contestant_name = contestant_name.split(" ")
  contestant_name[0]
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
  		contestant.each do |stat, value|
  			if value == occupation
  				return contestant["name"]
  			end
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
  		contestant.each do |stat, value|
  			if value == hometown
  				hometown_counter += 1
  			end
  		end
  	end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
  	contestants.each do |contestant|
  		contestant.each do |stat, value|
  			if value == hometown
  				return contestant["occupation"]
  			end
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
	age_array = []
  data.each do |season_number, contestants|
  	if season_number == season
  		contestants.each do |contestant|
  			contestant.each do |stat, value|
  				age_array << contestant["age"].to_f
  			end
  		end
  	end
  end
  average = age_array.inject {|sum, el| sum + el} / age_array.size.to_f
  average.round
end
