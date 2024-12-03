# Method that checks if it's time to eat (hungry?)
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours >= 12
    puts "Me hungry"
    true  # Returning true if it's time to eat (after 12 PM)
  else
    puts "Me not hungry"
    false # Returning false if it's before 12 PM
  end
end

# Method that defines what to eat
def eat_an(what)
  puts "Me eat #{what}\n"
end

# Testing with time values
eat_an 'apple' if hungry?(14)  # Time is 14:00 (2 PM), should print "Me hungry" and "Me eat apple"
eat_an 'apple' if hungry?(10)  # Time is 10:00 AM, should print "Me not hungry" and nothing after
