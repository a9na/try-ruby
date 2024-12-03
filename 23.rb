# Let's recap and demonstrate some of the key concepts from the previous lessons.
# These concepts will help you understand how to work with Ruby methods and strings.

# Example Poem for manipulation
poem = "I like toast with butter,\nToast for breakfast, toast for lunch.\n"

# 1. **Exclamations in method names**
# Some methods in Ruby end with an exclamation mark (e.g., .reverse!), which indicates
# that the method will modify the object it is called on directly.
# For example, if we were using .reverse! on a string, it would reverse the string in place.

# Example:
reversed_poem = poem.reverse  # .reverse without an exclamation does not modify the original string
puts reversed_poem            # Prints the reversed poem

# 2. **String Manipulation** - Search and Change Strings
# Ruby has powerful string manipulation methods like .downcase and .swapcase
# - .downcase: Converts all characters to lowercase.
# - .swapcase: Switches the case of each character (upper to lower and vice versa).

# Demonstrating .downcase and .swapcase on the poem:
puts poem.downcase  # Converts all the letters to lowercase
puts poem.swapcase  # Swaps the case of all letters

# 3. **Chaining Methods** - Chaining methods together is a powerful concept in Ruby.
# You can chain multiple methods together to perform a series of operations on a single object.

# In the example below, we chain .lines, .reverse, and .join to manipulate the poem:
puts poem.lines.reverse.join  # Reverses the order of lines in the poem and joins them back

# This allows you to perform several transformations in one line of code without creating intermediate variables.

# Ready for something new? Let's create a new hash to store books.
books = {}

# This is how we define an empty hash ({}).
# A hash in Ruby is a collection of key-value pairs. We'll learn more about hashes soon!

