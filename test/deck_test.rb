require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'

class DeckTest < Minitest::Test

  def test_new_deck_has_no_cards
    assert_equal [], Deck.new.cards
  end

  def test_add_to_cards_array
    deck = Deck.new
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)

    deck << card1
    deck << card2
    deck << card3

    assert_equal [card1, card2, card3], deck.cards
  end

  def test_rank_of_card_at_an_index
    deck = Deck.new
    card1 = Card.new(:heart, '4', 4)
    card2 = Card.new(:club, '10', 10)
    card3 = Card.new(:spade, 'King', 13)

    deck << card1
    deck << card3
    deck << card2

    assert_equal 4, deck.rank_of_card_at(0)
    assert_equal 13, deck.rank_of_card_at(1)
    assert_equal 10, deck.rank_of_card_at(2)
  end

  def test_list_high_ranking_cards
    deck = Deck.new
    card1 = Card.new(:heart, 'Ace', 14)
    card2 = Card.new(:club, '10', 10)

    deck << card1
    deck << card2

    assert_equal [card1], deck.high_ranking_cards
  end

  def test_percent_that_are_high_ranking
    deck = Deck.new
    card1 = Card.new(:heart, 'Ace', 14)
    card2 = Card.new(:club, '10', 10)

    deck << card1
    deck << card2

    assert_equal 50.00, deck.percent_high_ranking
  end

  def test_removing_a_card
    deck = Deck.new
    card1 = Card.new(:spade, 'Queen', 12)
    card2 = Card.new(:heart, '2', 2)

    deck << card1
    deck << card2

    deck.remove_card
    assert_equal [card2], deck.cards
  end

  def test_adding_a_card
    deck = Deck.new
    card4 = Card.new(:club, '5', 5)

    deck.add_card(card4)

    assert_equal [card4], deck.cards
  end

  def test_it_count_number_of_cards_in_deck
    deck = Deck.new
    card1 = Card.new(:spade, 'Queen', 12)
    card2 = Card.new(:heart, '2', 2)

    deck << card1
    deck << card2

    assert_equal 2, deck.count
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
    assert_equal split_deck.values.class, Array
  end

end
