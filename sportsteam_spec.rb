require("minitest/autorun")
require("minitest/rg")
require_relative("./sportsteam")

class TestSportsTeam < MiniTest::Test

  def test_team_name()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    assert_equal("Code Clan Crew", sportsteam1.name())
  end

  def test_team_players()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    assert_equal(["Player 1", "Player 2"], sportsteam1.players())
  end

  def test_team_coach()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    assert_equal("Adam", sportsteam1.coach())
  end



  def test_set_team_coach()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")

    sportsteam1.set_coach_name("Tom")

    assert_equal("Tom", sportsteam1.coach())
  end

  def test_add_new_players()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    sportsteam1.add_new_player("Player 3")
    assert_equal(["Player 1", "Player 2", "Player 3"], sportsteam1.players())
  end

  def test_check_for_player_fail()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    result = sportsteam1.check_player("Player 5")
    assert_equal(false, result)
  end

  def test_check_for_player_pass()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    result = sportsteam1.check_player("Player 2")
    assert_equal(true, result)
  end

  def test_team_points()
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    assert_equal(0, sportsteam1.points())
  end

  def test_team_has_won
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    sportsteam1.update_points("Win")
    assert_equal(3, sportsteam1.points())
  end

  def test_team_has_lost
    sportsteam1 = SportsTeam.new("Code Clan Crew", ["Player 1", "Player 2"], "Adam")
    sportsteam1.update_points("Lost")
    assert_equal(3, sportsteam1.points())
  end

end
