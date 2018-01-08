# h = {
#   :operation1 => function(number1, number2),
#   :operation2 => function(number1, number2)
# }
# operation = gets.chomp
# number1 = gets.chomp
# number2 = gets.chomp
# h[operation]
# function(number1, number2)
require ('pry')
print "Choose type of your operation: 1 - for addition, 2 - for subtraction, 3 - for division, 4 - for multiplication "
operat = gets.chomp.to_i
print "Type your first number "
numb1 = gets.chomp.to_i
print "Type your second number "
numb2 = gets.chomp.to_i

def subtract(number1, number2)
  result = number1 - number2
  puts "Your result is - #{result}"
end

def divide(number1, number2)
  result = number1.to_f / number2.to_f
  puts "Your result is - #{result}"
end

def add(number1, number2)
  result = number1 + number2
  puts "Your result is - #{result}"
end

def multiplicate(number1, number2)
  result = number1 * number2
  puts "Your result is - #{result}"
end

def choose_operation(operation, number1, number2)
  if operation === 1
    add(number1, number2)
  elsif operation === 2 
    subtract(number1, number2)
  elsif operation === 3 
    divide(number1, number2)
  elsif operation === 4 
    multiplicate(number1, number2)
  else print "Sorry, wrong enter. Choose type of your operation: 1 - for addition, 2 - for subtraction, 3 - for division, 4 - for multiplication "
  operat = gets.chomp.to_i
  choose_operation(operation, number1, number2)
  end
  return true
end

choose_operation(operat, numb1, numb2)

print "Would you like to continue operate? y/n - "
choice = gets.chomp
while choice === "y"
  print "Choose type of your operation: 1 - for addition, 2 - for subtraction, 3 - for division, 4 - for multiplication "
  operat = gets.chomp.to_i
  print "Type your first number "
  numb1 = gets.chomp.to_i
  print "Type your second number "
  numb2 = gets.chomp.to_i
  choose_operation(operat, numb1, numb2)
  print "Would you like to continue operate? y/n - "
  choice = gets.chomp
end
binding.pry
