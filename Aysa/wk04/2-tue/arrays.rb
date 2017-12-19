require 'pry'

 
planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]

#Access the second value in planeteers.
puts planeteers[1]

#Add "Heart" to the end of planeteers.
planeteers[5] = "Heart"

#Remove "Captain Planet" from the array (without using a method).
planeteers - ['Heart']

#Combine planeteers with rangers = ["Red", "Blue", "Pink", "Yellow", "Black"] and save the result in a variable called heroes.
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers + rangers

#Alphabetize the contents of heroes using a method. The Ruby documentation might help.
heroes.sort
#Randomize the contents of heroes using a method. The Ruby documentation might help.
heroes.shuffle

#Bonus
#Select a random element from heroes using a method. The Ruby documentation might help.
heroes[rand(0..9)]

#Select all elements in heroes that begin with "B" using a method. The Ruby documentation might help.
binding.pry

# i = 0
# while i <= heroes.length do
#   puts i
#   if heroes[i].start_with?('B')
#     puts heroes[i]
#   i = i + 1
#   end
# end

heroes.each do |hero|
  if hero.start_with?('B') 
  puts hero
  end
end


#Hashes
#Initialize a hash called ninja_turtle with the properties name, weapon and radical. They should have values of "Michelangelo", "Nunchuks" and true respectively.
ninja_turtle = {
  :name => "Michelangelo",
  :weapon => "Nunchuks",
  :radical => true
}

#Add a key age to ninja_turtle. Set it to whatever numerical value you'd like.
ninja_turtle[:age] = 17

#Remove the radical key-value pair from ninja_turtle.
ninja_turtle.delete(:radical)

#Add a key pizza_toppings to ninja_turtle. Set it to an array of strings (e.g., ["cheese", "pepperoni", "peppers"]).
ninja_turtle[pizza_toppings] = ["cheese", "pepperoni", "peppers"]


#Produce an array containing all of ninja_turtle's keys using a method. The Ruby documentation might help.
arr_all_keys = []
ninja_turtle.each{ |key,value| arr_all_keys.push(value) }

#Bonus
#Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. The Ruby documentation might help.
ninja_turtle.each do |key, value|
  puts "#{key}:#{value}"
end