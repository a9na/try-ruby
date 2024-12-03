# To (be) or not to (be) - Understanding method arguments and parentheses

# We have seen methods like gsub which accept arguments.
# The method gsub("toast", "honeydew") replaces "toast" with "honeydew" in the poem.
# Arguments are the values we pass into methods to help them know what to do.

# Example:
poem = "I like toast for breakfast. Toast is great."
puts poem.gsub("toast", "honeydew")  # Replaces "toast" with "honeydew"

# The gsub method needs two arguments: the word to be replaced and the replacement word.
# Here, "toast" is the first argument and "honeydew" is the second argument.

# Now, notice something interesting: you can omit parentheses when calling methods in Ruby.
# So, the following two lines of code do the same thing:

puts "Hello"  # With parentheses, it's clearer, but Ruby doesn't mind omitting them.
puts("Hello")  # Ruby allows both ways.

# This makes Ruby more flexible and easier to read, as it respects your style preferences.
# The version without parentheses might seem more readable, especially for simple statements like `puts`.

# In the case of `gsub`, it would work without parentheses as well:

puts poem.gsub "toast", "honeydew"  # Same as above, but without parentheses.

# Summary of Parentheses and Method Arguments:
# - **Arguments** are values you pass into methods to specify what they should do (e.g., "toast" and "honeydew" in gsub).
# - **Parentheses** are optional in many cases in Ruby. You can omit them if the code is still clear and readable.
# - Using parentheses for clarity is a good habit, especially when you have multiple arguments.
# - Both `puts "Hello"` and `puts("Hello")` are acceptable in Ruby, but the former is more common because it is shorter.

# You can choose what feels best for your code as long as it remains readable and clear.
# Whether you prefer to call methods with parentheses or without, it’s entirely up to you.

# To continue with more Shakespeare:
# puts "To (be) or not to (be)"
