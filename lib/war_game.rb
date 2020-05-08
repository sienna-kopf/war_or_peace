class WarGame
  # attr_reader :deck,
  #             :deck_1,
  #             :deck_2

  def initialize
    @deck = Deck.new
    # @player_1 = Player.new(name, @deck.split_deck)
  end

  def create_deck
    suits = [:heart, :diamond, :spade, :club]
    values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
    rank_of_card = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}

    suits.each do |suit|
      values.each do |value|
        # rank = rank_of_card.key(value)
        rank = rank_of_card[value]
        @deck << Card.new(suit, value, rank)
      end
    end
    @deck 
  end

  # def split_deck
  #   new_deck = WarGame.new.create_deck
  #
  #   26.times do
  #     single_card = new_deck[rand(new_deck.length)]
  #     @deck_1.concat(single_card)
  #     @deck.delete(single_card)
  #   end
  #
  #   @deck2 << @deck
  # end

end
