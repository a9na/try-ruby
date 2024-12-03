# This method tames a certain number of shrews
# It takes one argument: number_of_shrews
# The method will print "Tamed a shrew" as many times as the number_of_shrews
# It will then return the number_of_shrews

def tame(number_of_shrews)
  # The .times method will execute the block inside it a certain number of times
  # It is passed the number_of_shrews as an argument, so the block runs that many times
  number_of_shrews.times {
    # Inside the block, we print "Tamed a shrew"
    puts "Tamed a shrew"
  }
  # Ruby will automatically return the last evaluated expression (number_of_shrews)
  # No need to explicitly write 'return' because the last line is evaluated as the return value
  number_of_shrews
end

# Here we call the tame method with an argument of 3
# This will print "Tamed a shrew" 3 times and then return the number 3
puts tame(3)
