puts "Hi, What's your name!"
name = gets.chomp
puts "Hello #{name}, try guess the secret number"

secret_number = rand(1..100)
# puts secret number
counter = 1
chances = 6
guesses = []

while counter <= chances
  puts secret_number

puts "Choose a number between 1 to 100"
guesses_number = gets.to_i
puts guesses_number

if guesses_number > secret_number
  puts "Number is too high"
elsif guesses_number < secret_number
  puts "Number is too low"
else
  puts "You found the correct number"
  break
end
guesses << guesses_number
puts "guesses: #{guesses}"
counter +=1
end