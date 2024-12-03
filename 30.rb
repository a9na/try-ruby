# The `times` method is called on the number `5`.
# This will run the block 5 times, starting from 0 to 4.

5.times { |time| # The block starts here, and `|time|` defines a parameter to hold the current iteration value
  # `puts` is used to print out the value of `time` on each iteration.
  # The value of `time` will change from 0 to 4 during the loop.
  puts time
}

# Output will be:
# 0
# 1
# 2
# 3
# 4

# Another way to write the block using `do...end` for better readability:

5.times do |time| # We use `do...end` instead of `{...}` to make the block more readable, especially with multiple lines
  # Prints a message along with the current value of `time` (iteration number)
  puts "This is repetition number #{time}" # String interpolation is used to print the current value of `time`
end

# Output will be:
# This is repetition number 0
# This is repetition number 1
# This is repetition number 2
# This is repetition number 3
# This is repetition number 4

# Key points:
# 1. `5.times` repeats the block 5 times, passing the current iteration number to the block.
# 2. The block uses pipe symbols (`|time|`) to define a variable that stores the current iteration value.
# 3. `puts` prints the value of `time` during each iteration.
# 4. You can use `do...end` instead of `{...}` to split the block across multiple lines for readability.
