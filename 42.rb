# Ruby Decision Making Example

# Basic 'if' statement example
if 1 < 2
  puts "It is true: 1 is less than 2"
end

# In this case, the condition `1 < 2` evaluates to true, so Ruby executes the code inside the `if` block, printing the message "It is true: 1 is less than 2".

# Shortened form of 'if'
puts "It is true: 1 is less than 2" if 1 < 2

# This is the same as the previous example, but it uses a more compact version of the if statement where the condition comes after the code.

# Ruby allows expressions to evaluate to either true or false, and those results determine the flow of the program.
# Here are some different expressions that evaluate to true or false:

# Example 1: Numeric comparison
if 5 <= 10
  puts "5 is less than or equal to 10"  # This will print because the condition is true.
end

# Example 2: String comparison
if 'abc' == 'def'
  puts "Strings are equal"
else
  puts "Strings are not equal"  # This will print because the condition is false.
end

# Example 3: Truthy value check
if true
  puts "True is true!"  # This will print because the condition is true.
end

# Example 4: Falsy value (nil) check
if nil
  puts "This won't print"  # This will not print because nil is considered false in Ruby.
end

# Example 5: Non-zero integers, which are considered truthy in Ruby
if 123456
  puts "123456 is truthy"  # This will print because 123456 is considered true.
end

# Example 6: Zero, which is also considered truthy in Ruby
if 0
  puts "Zero is truthy"  # This will print because 0 is considered truthy in Ruby.
end

# Example 7: Checking if a string is empty
if 'xyz'.empty?
  puts "String is empty"  # This won't print because 'xyz' is not empty.
else
  puts "String is not empty"  # This will print because 'xyz' is not empty.
end

# Explanation:
# - `if` evaluates the expression inside it and runs the block of code if the expression evaluates to `true`.
# - If the expression evaluates to `false`, the block of code is skipped.
# - Ruby considers certain values "truthy" and "falsy." 
#   - **Truthy values**: Non-nil objects, non-zero numbers, and non-empty strings.
#   - **Falsy values**: `nil` and `false` are the only values considered false in Ruby.
# - You can use `if`, `elsif`, and `else` to handle different conditions.

# Example of using 'elsif' to handle multiple conditions:
number = 7
if number < 5
  puts "The number is less than 5"
elsif number == 7
  puts "The number is 7"  # This will print because the condition is true.
else
  puts "The number is greater than 5"
end

# More details:
# - `elsif` allows you to check additional conditions if the first one is false.
# - `else` handles all cases where the condition does not match any of the previous `if` or `elsif` conditions.

# Finally, we can use 'unless' for the opposite of 'if'. 
# It executes the block if the condition is false.
unless 5 > 10
  puts "5 is not greater than 10"  # This will print because the condition is false.
end
