puts "Hi, What's your name!"
name = gets.chomp
puts "Hello #{name}, try guess the secret number"

def play_game
  secret_number = rand(1..100)
  counter = 1
  chances = 6
  guesses = []

  while counter <= chances
    puts "Choose a number between 1 to 100"
    guesses_number = gets.to_i

  if guesses_number > secret_number
    puts "Number is too high"
  elsif guesses_number < secret_number
    puts "Number is too low"
  else
    puts "Congratulation, you found the correct number (#{secret_number})!"
    break
  end

    guesses << guesses_number
    puts "Guesses: #{guesses.join('. ')}"

    if counter < chances
      puts "You have #{chances - counter} #{chances - counter == 1 ? 'chance' : 'chance'} left"
    else
      puts "Sorry, you're out of chances. The secret was #{secret_number}."
    end

    counter +=1
  end
end


play_game

 loop do
  puts "Do you want to try again? (yes/no)"
  play_again = gets.chomp.downcase
  if play_again == "yes"
    play_game
  else
    puts "thank you for playing!!!"
    break
  end
end
