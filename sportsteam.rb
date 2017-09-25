class SportsTeam
  def initialize(input_team_name, input_players, input_coach)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = 0
  end

  def name()
    return @team_name
  end

  def players()
    return @players
  end

  def coach()
    return @coach
  end

  def set_coach_name(new_coach_name)
    @coach = new_coach_name
  end

  def add_new_player(player_name)
    @players << player_name
  end

  def check_player(player_name)
    exists = false
    for player in @players
      if player == player_name
        exists = true
      end
    end
    return exists
  end

  def points()
    return @points
  end

  def update_points(team_result)
    @points += 3 if team_result = "Win"
    @points = @points if team_result = "Lost"
  end








end
