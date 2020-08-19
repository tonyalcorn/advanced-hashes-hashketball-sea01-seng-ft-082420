def num_points_scored(player_name) #WORKS
  game_hash.values.each do |team|  
    team[:players].each do |player|
      return player[:points] if player.has_value?(player_name)
    end
  end
binding.pry
end

def shoe_size(player_name) #WORKS
  game_hash.values.each do |team_info|  
    team_info[:players].each do |player|
      return player[:shoe] if player.has_value?(player_name)
    end
  end

end	

def team_colors(team_name) #WORKS
	team_colors = nil
	game_hash.each do |location, location_data|
		if location_data[:team_name] == team_name
			team_colors = location_data[:colors]
		end
		
	end
	team_colors
end

def team_names #WORKS
	team_names = []
	game_hash.each do |location, loc_data|
		team_names << loc_data[:team_name]
	end
	team_names
end



def big_shoe_rebounds #WORKS
  biggest_shoe = 0
  player_rebounds = 0
  game_hash.values.each do |team_info|
    team_info[:players].each do |player|
      if player[:shoe] > biggest_shoe
        biggest_shoe = player[:shoe] 
        player_rebounds = player[:rebounds] 
      end
    end
  end
  return player_rebounds
end


def player_numbers(team) #WORKS
  game_hash.values.each do |team_info|
    if team_info.has_value?(team)
      return team_info[:players].map { |player| player[:number]}
    end
  end
end
