# Defining the method `tame`
# This method will take one argument: `number_of_shrews`
def tame(number_of_shrews)
  # We use the `times` method to repeat the action `number_of_shrews` times.
  # Inside the block, the code `puts "Tamed a shrew"` will be executed each time.
  number_of_shrews.times {
    puts "Tamed a shrew"
  }
end

# Calling the method with 3 as the argument
# This will output the phrase "Tamed a shrew" three times.
tame(3)
