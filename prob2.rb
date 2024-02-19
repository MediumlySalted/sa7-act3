
game = true
points = 0
rooms_and_rewards = {
  "1" => 5,
  "2" => 10,
  "3" => 15
}

puts "--------------------------------------------"
puts "Welcome to the most boring Adventure Game!"
puts "You currently have #{points} points."
puts "--------------------------------------------"

while game
  print "Choose a room (1-3) to enter or respond 'quit' to quit the game: "
  option = gets.chomp
  if rooms_and_rewards.keys.include?(option)
    puts "You entered Room #{option} and earned #{rooms_and_rewards[option]} points!"
    points += rooms_and_rewards[option]
  elsif option == 'quit'
    game = false
    puts
    puts "-------------------------------------------------------"
    puts "Game over! You collected a total of #{points} points."
    puts "-------------------------------------------------------"
  else
    puts "Error: Invalid option."
  end
  puts
end
