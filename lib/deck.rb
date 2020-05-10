class Deck
  attr_reader :cards

  def initialize(cards = [])
    @cards = cards
  end

  def <<(card)
    @cards << card
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    high_cards = cards.select do |card|
      card.rank >= 11
    end
  end

  def percent_high_ranking
    (high_ranking_cards.count.to_f / cards.count.to_f) * 100
  end

  def remove_card
    @cards.shift
  end

  def add_card(card)
    @cards.push(card)
  end

  def count
    @cards.count
  end

  def shuffle
    @cards.shuffle!
  end

  def create_52_card_deck
    suits = [:heart, :diamond, :spade, :club]
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
    rank_of_card = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
    ## Use cards local varaible instead o fthe instance var
    new_deck = []

    suits.each do |suit|
      values.each do |value|
        # rank = rank_of_card.key(value)
        rank = rank_of_card[value]
        new_deck << Card.new(suit, value, rank)
      end
    end
    new_deck
  end

  def split
    ## split the deck into two hash key value pairs
    #build hash to assign to
    playing_deck = Deck.new.create_52_card_deck.shuffle

    split_deck = {
      'deck1' => (playing_deck.shift(26)),
      'deck2' => playing_deck
    }
  end

end
