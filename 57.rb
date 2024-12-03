# TryRuby Lessons Summary

# Lesson 1: Getting Started with Ruby

# Ruby is a powerful and flexible programming language. Let's start by understanding how to use it.

# Getting a result in Ruby:
# Ruby is interactive, and you can write simple expressions that Ruby will evaluate.
# Example:
# puts 1 + 1  # Output: 2

# Ruby uses a variety of operators. You can use them like this:
# puts 5 * 4  # Output: 20

# You can also work with strings:
# puts "Hello, Ruby!"  # Output: Hello, Ruby!

# Lesson 2: Data Structures

# Ruby provides useful data structures such as Arrays and Hashes.

# An Array is a list of values:
my_array = [1, 2, 3, 4]
puts my_array[0]  # Output: 1

# A Hash is a collection of key-value pairs:
my_hash = { "name" => "Ruby", "version" => "3.0" }
puts my_hash["name"]  # Output: Ruby

# Lesson 3: Iteration with Arrays and Hashes

# Ruby allows you to easily iterate through Arrays and Hashes with .each method.

# Iterating through an array:
my_array.each { |x| puts x }  # Output: 1, 2, 3, 4

# Iterating through a hash:
my_hash.each { |key, value| puts "#{key}: #{value}" }  # Output: name: Ruby, version: 3.0

# Lesson 4: Printing with Formatting

# Ruby allows you to format output in a clear and readable way.
# String interpolation allows you to insert variables into strings.

name = "Alice"
puts "Hello, #{name}!"  # Output: Hello, Alice!

# You can also format strings with the .ljust method to ensure consistent column widths:
puts "Title".ljust(20) + "Author".ljust(20)

# Lesson 5: Decision Making with if

# Ruby allows you to make decisions in your programs using `if` statements.

if 1 < 2
  puts "It is true: 1 is less than 2"  # Output: It is true: 1 is less than 2
end

# You can also use `elsif` and `else` for additional conditions:
a = 5
if a < 3
  puts "a is less than 3"
elsif a == 5
  puts "a is 5"  # Output: a is 5
else
  puts "a is something else"
end

# Lesson 6: Methods

# Ruby allows you to define your own methods. Here's how you can define and use them.

def greet(name)
  "Hello, #{name}!"
end

puts greet("Ruby")  # Output: Hello, Ruby!

# You can also use default arguments in methods:
def greet(name="Stranger")
  "Hello, #{name}!"
end

puts greet  # Output: Hello, Stranger!
puts greet("Alice")  # Output: Hello, Alice!

# Lesson 7: Classes and Objects

# Ruby is an object-oriented programming language, and everything is an object.

# You can define a class with attributes (variables) and methods (functions).
class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]  # Limits content to 40 characters
    @mood = mood
  end
end

# Create a new object of the Blurb class
blurb = Blurb.new(:happy, "Today was a great day!")

puts blurb.content  # Output: Today was a great day!
puts blurb.mood     # Output: happy

# Lesson 8: Object-Oriented Programming (OOP)

# In OOP, we use classes to model real-world objects. Each object is an instance of a class.

class Blurbalizer
  def initialize(title)
    @title = title
    @blurbs = []
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "#{@title} has #{@blurbs.count} Blurbs"
    @blurbs.sort_by { |t| t.time }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

# Create a Blurbalizer object and add some blurbs
my_app = Blurbalizer.new("The Big Blurb")
my_app.add_a_blurb(:moody, "My first Blurb!")
my_app.add_a_blurb(:happy, "I love Ruby!")

# Show the timeline
my_app.show_timeline

# Lesson 9: Improving the App with Mood and Formatting

# You can add functionality to format moods with smileys by modifying the Blurb class.

class Blurb
  def moodify
    case @mood
    when :happy
      ":-)"
    when :sad
      ":-("
    else
      ":-|"
    end
  end
end

# Add moodify to Blurbalizer's show_timeline
class Blurbalizer
  def show_timeline
    puts "#{@title} has #{@blurbs.count} Blurbs"
    @blurbs.sort_by { |t| t.time }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.moodify} #{t.time}"
    }
  end
end

# Adding more blurbs with moods
my_app.add_a_blurb(:sad, "Feeling down today.")
my_app.show_timeline
