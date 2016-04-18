user_wins = 0
ai_wins = 0

def game(your_wins, cpu_wins)
    # Rock Paper Scissors
    puts "Welcome to rock, paper, scissors"

    user_choice = ""

    until user_choice == 'paper' or user_choice == 'rock' or user_choice == 'scissors'
        # ask the user for their selection
        puts "Please enter paper, rock, or scissors"
        # get the users input
        user_choice = gets.chomp.downcase
    end
        
    ai_choice = ['rock','paper','scissors'].sample

    win = "You win! Want a frozen banana!?"

    if user_choice == ai_choice
        puts "It was a tie!"
    elsif user_choice == 'rock'
        if ai_choice == 'paper'
            puts lose
            cpu_wins += 1
        else
            puts win
            your_wins += 1
        end
    elsif user_choice == 'paper'
        if ai_choice == 'scissors'
            puts lose
            cpu_wins += 1
        else
            puts win
            your_wins += 1
        end
    else
        if ai_choice == 'rock'
            puts lose
            cpu_wins += 1
        else
            puts win
            your_wins += 1
        end
    end

    puts
    puts "Your choice was " + user_choice
    puts "AI choice was " + ai_choice
    puts
    puts "Your score: #{your_wins}, AI score: #{cpu_wins}"
    puts
    puts "Would you like to play again? (enter 'yes' or 'y')"
    play_again = gets.chomp.downcase

    if play_again == 'yes' or play_again == 'y'
        game(your_wins, cpu_wins)
    else
        puts "Thanks for playing"
    end
end

game(user_wins, ai_wins)