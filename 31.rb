# Hashes are like dictionaries, storing key-value pairs.
# In the previous example, we stored book reviews using book titles as keys and ratings as values.

# Create an empty hash to store book reviews
books = {}

# Assigning ratings to books in the hash
books["Gravity's Rainbow"] = :splendid
books["The deep end"] = :abysmal
books["Living colors"] = :mediocre

# Print the entire hash
puts books

# The output will look like this (depending on what you have stored):
# {"Gravity's Rainbow": :splendid, "The deep end": :abysmal, "Living colors": :mediocre}

# Symbols: These are lightweight and memory-efficient keywords used in Ruby. They are preceded by a colon (:).
# Example of symbol usage:
:happy  # A symbol representing a specific meaning.

# Symbols are memory efficient, as Ruby only stores one instance of a symbol in memory, 
# unlike strings, which can take up more space if used repeatedly.

# Blocks are chunks of Ruby code that can be passed to methods to perform actions on data.
# Here’s an example of using a block with the `.each` method to iterate over values in an array:

numbers = [1, 2, 3, 4, 5]

# Using a block with `each` to iterate over the array
numbers.each { |num| puts num }

# Output:
# 1
# 2
# 3
# 4
# 5

# Blocks can also be used with other methods, like `.values` to iterate over values in a hash:
ratings = Hash.new(0)  # Default value is 0

# Loop through the hash values and tally the ratings
books.values.each { |rate| ratings[rate] += 1 }

# Print the tally of ratings
puts ratings

# Output (depending on the ratings you have):
# {:splendid => 1, :abysmal => 1, :mediocre => 1}

# Summary of Lesson #4:
# 1. **Hashes**: Store key-value pairs, like a dictionary.
# 2. **Symbols**: Efficient, memory-saving keywords represented by a colon (:).
# 3. **Blocks**: Chunks of Ruby code attached to methods to process data, such as iterating through values.

# Looking forward to more in-depth exploration of methods in the next lesson.
