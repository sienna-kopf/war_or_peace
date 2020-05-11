class WarGame
  attr_reader :player1,
              :player2

  def setup
    cards = Deck.new.split
    deck1 = Deck.new(cards[cards.keys[0]])
    deck2 = Deck.new(cards[cards.keys[1]])

    # cards = Deck.new.create_52_card_deck.shuffle
    # deck1 = Deck.new(cards.shift(26))
    # deck2 = Deck.new(cards)

    @player1 = Player.new('CECE', deck1)
    @player2 = Player.new('CARLO', deck2)


    # players = {
    #   'player1' => Player.new('CECE', deck[deck.keys[0]]),
    #   'player2' => Player.new('CARLO', deck[deck.keys[1]])
    # }
  end

  def start
    # game = WarGame.new.setup
    ## wrap in start method. Maybe start runs setup and then runs text
    puts "Welcome to War!(or Peace) This game will be played with 52 cards."
    puts "The players today are #{player1.name} and #{player2.name}."
    puts "Type 'GO' to start the game!"
    print ":"
    input = gets.chomp

    #while or until loop
    until input == "GO" do
    #ask for the input again
    puts "Welcome to War!(or Peace) This game will be played with 52 cards."
    puts "The players today are #{player1.name} and #{player2.name}."
    puts "Type 'GO' to start the game!"
    print ":"
    #reassigns input
    input = gets.chomp
    end

    66.times do
      print "-"
    end

    turn_number = 0

    until turn_number == 1000000 || player1.has_lost? || player2.has_lost? do
      turn = Turn.new(player1, player2)
      turn_number += 1
      puts "\nTurn #{turn_number}:"
      require 'pry'; binding.pry
      if turn.type == :basic
        turn.pile_cards
        print "#{turn.winner.name} won #{turn.spoils_of_war.count} cards"
        turn.award_spoils(turn.winner)
      elsif turn.type == :war
        turn.pile_cards
        print "WAR - #{turn.winner.name} won #{turn.spoils_of_war.count} cards"
        turn.award_spoils(turn.winner.name)
      else
        require 'pry'; binding.pry
        turn.pile_cards
        print "*mutually assured destruction* 6 cards removed from play"
      end
    end

    if player1.has_lost? == true
      puts "\n*~*~*~* #{player2.name} has won the game! *~*~*~*"
    elsif player2.has_lost? == true
      puts "\n*~*~*~* #{player1.name} has won the game! *~*~*~*"
    else
      puts "NO WINNER: Play again."
    end

    if turn_number == 1000000
      puts "---- DRAW ----"
    end 


  end


end
