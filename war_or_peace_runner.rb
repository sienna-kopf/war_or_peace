require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/war_game'

test_game = WarGame.new
test_game.setup
test_game.start


# cards = []
# suits = [:heart, :diamond, :spade, :club]
# values = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
# rank_of_card = {'2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10, 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14}
#
#
# suits.each do |suit|
#   values.each do |value|
#     # rank = rank_of_card.key(value)
#     rank = rank_of_card[value]
#     cards << Card.new(suit, value, rank)
#   end
# end
#
# deck1 = []
# 26.times do
#   single_card = cards[rand(cards.length)]
#   deck1 << single_card
#   cards.delete(single_card)
# end
#
# deck2 = cards
#
# player1 = Player.new("Megan", deck1)
# player2 = Player.new("Aurora", deck2)
#
#
# ## wrap in start method. Maybe start runs setup and then runs text
# p "Welcome to War!(or Peace) This game will be played with 52 cards."
# p "The players today are Megan and Aurora."
# print "Type 'GO' to start the game!"
# input = gets.chomp
#
# #while or until loop
# until input == "GO" do
# #ask for the input again
# p "Welcome to War!(or Peace) This game will be played with 52 cards."
# p "The players today are Megan and Aurora."
# print "Type 'GO' to start the game!"
#
# #reassigns input
# input = gets.chomp
# end
