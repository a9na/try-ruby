# Summary #7: A Giraffe Has Not Stolen

# 1. Classes
# In Ruby, everything is an object, and every object belongs to a class. A class defines the blueprint for creating objects with specific properties and behaviors.

# Class Example: In this case, the `Blurb` class defines the behavior of Blurb objects. These objects have specific attributes like `content`, `mood`, and `time`.
class Blurb
  attr_accessor :content, :time, :mood
end

# This class defines that a Blurb object will have `content`, `time`, and `mood` attributes.

# When you create a `Blurb` object using:
blurb = Blurb.new
# You get a **Blurb object** where each one can have its own values for `content`, `time`, and `mood`.

# 2. Accessors
# In Ruby, **accessors** are methods that automatically create **getter** and **setter** methods for object attributes (also known as instance variables). These are created using `attr_accessor`.

# Getter Method: Allows access to an object's attribute.
# Setter Method: Allows modification of an object's attribute.

# Example:
class Blurb
  attr_accessor :content, :time, :mood
end

blurb = Blurb.new
blurb.content = "A sample content"  # Setter method
puts blurb.content                  # Getter method

# Here, `attr_accessor :content, :time, :mood` generates two methods for each attribute:
# A **getter** for `content` is `blurb.content`
# A **setter** for `content` is `blurb.content = "new value"`

# So `content` is both accessible and modifiable directly from outside the class.

# 3. Object Variables
# **Object variables** (also known as instance variables) are variables that belong to a specific instance of an object. Inside a class, these variables are usually prefixed with `@`.

# For instance:
class Blurb
  def initialize(content)
    @content = content  # Instance variable
  end
end

# The variable `@content` holds data specific to the individual `Blurb` object. The `@` symbol marks it as an instance variable, which means it is not shared between objects but specific to each instance.

# Example with Complete Code:
class Blurb
  attr_accessor :content, :time, :mood  # Accessors for content, time, mood

  # Initialize method to set up the object
  def initialize(mood, content="")
    @time = Time.now               # Set time when Blurb is created
    @content = content[0..39]      # Limit content to 40 characters
    @mood = mood                   # Set mood when Blurb is created
  end
end

# Creating a new Blurb instance
blurb1 = Blurb.new(:happy, "Just finished a great Ruby tutorial!")

# Accessing the attributes using getter methods
puts blurb1.time      # Gets the current time
puts blurb1.content   # Gets the content of the blurb
puts blurb1.mood      # Gets the mood of the blurb

# Changing the content using the setter method
blurb1.content = "Feeling even better now!"
puts blurb1.content   # Prints the updated content

# 4. Explanation of Code:
# 1. **Class Definition**: The `Blurb` class has three attributes: `content`, `time`, and `mood`.
# 2. **Accessors**: The `attr_accessor` method creates getter and setter methods for each of the attributes.
# 3. **Instance Variables**: `@time`, `@content`, and `@mood` are **instance variables** that store data specific to each `Blurb` object.
# 4. **Initialize Method**: The `initialize` method is automatically called when a new `Blurb` object is created, setting the `time` to the current time and limiting the `content` to 40 characters.

# 5. Key Concepts Recap:
# - **Classes**: Define the blueprint for creating objects with specific properties and behaviors.
# - **Accessors**: Methods for accessing and modifying an object's attributes.
# - **Object Variables**: Instance variables used to store data specific to an object.
# - **`initialize` Method**: Sets up an object with initial values when it's created.

# 6. Why Use Classes and Accessors?
# - **Classes** help you group together related data and behaviors. In this case, the `Blurb` class bundles content, time, and mood into one object.
# - **Accessors** make it easy to interact with an object's attributes without needing to manually write getter and setter methods. This keeps your code cleaner and easier to manage.
# - **Object Variables** are specific to each object, which means every instance of a class can have its own unique values.

# By understanding how to use classes, accessors, and object variables, you can structure your programs to be more organized, modular, and scalable.

