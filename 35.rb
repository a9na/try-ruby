# Define the method tame
def tame(number_of_shrews)
  # Repeat the action `number_of_shrews` times
  number_of_shrews.times {
    puts "Tamed a shrew"
  }
end

# Call the tame method with an argument of 5
# This will output the phrase "Tamed a shrew" five times
tame(5)
