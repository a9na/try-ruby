# Ruby comparison with `=` vs `==`

# Assigning a value to a variable
a = 0

# Using single equal sign for assignment in an if statement
if a = 100  # This is an assignment, not a comparison
  puts "Expression is true, but a is now: #{a}"  # This will print because a has been assigned 100
else
  puts "#{a} is not equal to 100"  # This will not run because the if condition is true due to the assignment
end

# The line `if a = 100` is using `=` (assignment) instead of `==` (comparison).
# The assignment happens first, so `a` is set to 100, and Ruby considers the assignment as a "truthy" value (non-nil).

# Now change the '=' to '==' for comparison:

a = 0  # Resetting 'a' to 0 again

# Using '==' for comparison
if a == 100  # This is a comparison, checking if 'a' equals 100
  puts "Expression is true"
else
  puts "#{a} is not equal to 100"  # This will print because 'a' is 0, not 100
end

# Explanation:
# - `=` is used for **assignment**. It assigns the value on the right to the variable on the left.
# - `==` is used for **comparison**. It checks if the values on both sides are equal, returning `true` or `false`.
# 
# The first block of code demonstrates that when `=` is used in an `if` statement, it assigns a value to `a` and evaluates to `true` because the value 100 is truthy (non-nil).
# The second block with `==` properly compares the value of `a` to 100, which is false, so it runs the `else` block.
