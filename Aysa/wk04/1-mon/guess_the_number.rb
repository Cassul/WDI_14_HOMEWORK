computers_number = rand(1..10)
users_number = gets.chomp.to_i
while users_number !== computers_number
  if users_number > computers_number
    puts "guess lower"
    users_number = gets.chomp.to_i
  else users_number < computers_number
    puts "guess higher"
    users_number = gets.chomp.to_i
  end
end
puts "your guess is right"

    