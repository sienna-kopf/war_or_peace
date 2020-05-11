require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require './lib/turn'
require './lib/war_game'

class WarGameTest < Minitest::Test

  def test_it_exists
    game = WarGame.new

    assert_instance_of WarGame, game
  end

  def test_assign_split_deck_to_players
    game = WarGame.new
    game.setup


    assert_equal 'CECE', game.player1.name
    assert_equal 'CARLO', game.player2.name
    assert_equal 26, game.player1.deck.count
    assert_equal 26, game.player2.deck.count
  end

  def test_mad_type_turn_works
  #   game = WarGame.new
  #   game.setup
  #   game.start
  end

end
