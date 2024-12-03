# **Summary #5**
# In this summary, we covered:
# 
# **Methods**
# Methods can be defined using `def` and are given a name. They help make your program shorter and more readable.
def example_method
  puts "This is an example of a method"
end

# **Parameters**
# Methods can accept parameters, which are values passed to the method to work with.
def greet(name)
  puts "Hello, #{name}!"
end
greet("Alice")  # Outputs "Hello, Alice!"

# **Return values**
# Methods usually return a value after completing their task. You can explicitly return values with the `return` keyword, or Ruby will automatically return the last evaluated value.
def add(a, b)
  return a + b  # Explicit return
end

result = add(3, 5)
puts result  # Outputs 8

# Ruby also allows you to omit the `return` keyword. The method will return the last evaluated expression.
def multiply(a, b)
  a * b  # Implicit return of the multiplication result
end
puts multiply(3, 5)  # Outputs 15

# In summary:
# - Methods make your code more organized.
# - You can pass data into methods using parameters.
# - Methods typically return a value, which can be used later in the program.
