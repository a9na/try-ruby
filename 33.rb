# The Taming of the Shrew - Defining Your Own Methods in Ruby

# In Ruby, methods allow you to bundle a piece of code into a named block, 
# which you can then call to execute that block multiple times. 
# This makes your code shorter, easier to read, and more reusable.

# Let's start by defining a method.

# This is how you define a method in Ruby:
def tame(number_of_shrews)
  # Here you would put the code that the method should run.
  # For now, let's just print the number of shrews.
  puts "I am taming #{number_of_shrews} shrews."
end

# To call this method, you just use the method name and pass the necessary arguments.
# For example, let's call our method and tame 5 shrews.
tame(5)  # This will output: "I am taming 5 shrews."

# Explanation of the method:
# - `def` is the keyword used to define a method in Ruby.
# - `tame` is the name of the method (you can give it any name that makes sense for what it does).
# - `number_of_shrews` is the *parameter* that the method takes when it is called.
# - The code inside the method block (between `do` and `end`) will run when the method is called.
# - The method can then access the parameter `number_of_shrews` and do something with it, like print a message.

# The parameter `number_of_shrews` is a placeholder. When you call the method, you provide the actual value (like 5).
# Methods help reduce repetition by allowing you to reuse code. Instead of writing the same thing over and over,
# you just call your method with different arguments.

# Another example: Let's define a method that adds two numbers.
def add(a, b)
  sum = a + b
  return sum  # The method will return the sum of a and b.
end

# Let's call this method and add 3 and 7.
result = add(3, 7)
puts "The sum is: #{result}"  # This will output: "The sum is: 10"

# Explanation of this second method:
# - `def add(a, b)` defines a method named `add` that takes two parameters: `a` and `b`.
# - Inside the method, it calculates the sum of `a` and `b`, and then returns that sum.
# - When we call the method with `add(3, 7)`, it returns `10`, which is then stored in `result`.
# - `puts` is used to print the result to the screen.

# So, methods help us encapsulate functionality into reusable blocks, making our code shorter and easier to understand.
