# Print out all the leap years in the last 100 years.

# For numbers between 0 and 200:
# a) print out multiples of 7.
# b) print out every second odd number.
# c) print out all prime numbers.

print "Type your year "
year = gets.chomp.to_i

def leap_year_calculator(year)
  if year % 4 != 0
    puts "Your year is common"
  elsif year % 100 != 0
    puts "Your year is leap"
  elsif year % 400 != 0
    puts "Your year is common"
  else 
    puts "Your year is leap"
  end
end

leap_year_calculator(year)