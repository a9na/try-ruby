# The Blurb Class

# Step 1: Define a Blurb class with attributes
# This class will represent a "Blurb" with content, time, and mood
class Blurb
  # attr_accessor automatically generates getter and setter methods
  attr_accessor :content, :time, :mood

  # Step 2: Initialize method to set default values for a Blurb
  def initialize(content = nil, mood = nil)
    @content = content  # content is a string representing the text of the blurb
    @time = Time.now    # time is set to the current system time using Time.now
    @mood = mood        # mood is a symbol representing the mood (e.g., :happy, :sad)
  end

  # Step 3: Define a method to display the Blurb content nicely
  def display
    puts "Blurb posted at #{@time} with mood: #{@mood}"
    puts "Content: #{@content}"
  end

  # Step 4: Define a method to convert the Blurb object to a string format
  # This is used when printing the object with `puts` or `print`
  def to_s
    "Blurb: #{@content}, Mood: #{@mood}, Time: #{@time}"
  end
end

# Step 5: Create a new Blurb object
blurb1 = Blurb.new

# Step 6: Set the content of the Blurb
blurb1.content = "Today Mount Hood Was Stolen!"  # Sets the content attribute

# Step 7: Set the time and mood
blurb1.time = Time.now    # Sets the time attribute to the current time
blurb1.mood = :sick      # Sets the mood attribute to a symbol representing the mood

# Step 8: Display the Blurb using the `puts` method
# This will use the to_s method defined above to print a human-readable string
puts blurb1

# Expected Output:
# Blurb: Today Mount Hood Was Stolen!, Mood: sick, Time: 2024-12-03 14:35:00 +0000

