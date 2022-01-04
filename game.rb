require_relative "player"
require_relative "question"

class Game

  player1 = Player.new("Player1")
  player2 = Player.new("Player2")

  default_player = player1

  questions = Question.new

  # start:
  # Contain all this in While loop
    # While loop will continue to check if the player's ...
    # ... life player1.player_counter > 0 && player2.player_counter > 0 
      
      # This is where the "Q block" is gonna be

      # After the Q block - "P1: #{player1.player_counter}/3 vs P2: #{player2.player_counter}/3"

      
      # Default player method as a condition ::
        # If default_player == player1 >>> switch to player2
        # Else switch to player1

  # end

  # msg "#{Player} wins with a score of #{}"
  # Puts "game over"


  while player1.player_counter > 0 && player2.player_counter > 0

    num1 = Question.num1
    num2 = Question.num2
    puts "#{default_player.name}: What does #{num1} plus #{num2} equal?"
    
    print "> "
    input = gets.chomp.to_i
  
    sum = num1 + num2
  
    if input == sum
      puts "#{default_player.name}: YES! You are correct."
    else
      default_player.wrong
      puts "#{default_player.name}: Seriously? No!"
      puts "P1: #{player1.player_counter}/3 vs P2: #{player2.player_counter}/3"
      puts "----- NEW TURN -----"
      
      if default_player == player1
        default_player = player2
      elsif default_player == player2
      default_player = player1
      end
    end
  end

  if player1.player_counter > player2.player_counter
    puts "#{player1.name} wins with a score of #{player1.player_counter}/3"
  else
    puts "#{player2.name} wins with a score of #{player2.player_counter}/3"
  end

  puts "Game Over"
  
end

