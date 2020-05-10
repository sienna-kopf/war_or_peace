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
    card_deck = Deck.new

    assert_equal 52, card_deck.create_52_card_deck.count
  end

  def test_create_a_real_deck_with_unique_cards
    skip
    card_deck = Deck.new

  end

  def test_a_shuffled_deck_is_not_a_unshuffled_deck
    card_deck_1 = Deck.new.create_52_card_deck
    card_deck_2 = Deck.new.create_52_card_deck

    shuffled_card_deck_1 = card_deck_1.shuffle
    refute_equal shuffled_card_deck_1, card_deck_2

    shuffled_card_deck_2 = card_deck_2.shuffle
    refute_equal shuffled_card_deck_1, shuffled_card_deck_2
  end


  def test_split_deck_in_half
    full_deck = Deck.new

    split_deck = full_deck.split

    assert_equal 26, split_deck[split_deck.keys[0]].count
    assert_equal 26, split_deck[split_deck.keys[1]].count
    assert_equal 'deck1', split_deck.key(split_deck.values[0])
    assert_equal 'deck2', split_deck.key(split_deck.values[1])


  end

  def test_assign_split_deck_to_players


  end


end
