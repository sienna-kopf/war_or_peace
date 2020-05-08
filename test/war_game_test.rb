require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require './lib/turn'
require './lib/war_game'

class WarGameTest < Minitest::Test
  def test_it_exists
    war_game = WarGame.new

    assert_instance_of WarGame, war_game
  end

  def test_create_a_52_card_deck
    war_game = WarGame.new

    assert_equal 52, war_game.create_deck.count
  end

  # def test_split_deck
  #   war_game = WarGame.new
  #   whole_deck = war_game.create_deck
  #   war_game.split_deck
  #
  #   require 'pry'; binding.pry
  #
  #   assert_equal
  # end


end
