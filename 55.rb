# The Blurbalizer class and Blurb class work together to manage a collection of "Blurbs".
# Blurbs are short messages that have a mood and a timestamp.

class Blurb
  attr_accessor :content, :time, :mood
  
  # Initialize a new Blurb with a mood and an optional content string
  def initialize(mood, content="")
    @time    = Time.now      # Set the time to the current time when the Blurb is created
    @content = content[0..39] # Limit the content to a maximum of 40 characters
    @mood    = mood
  end
end

class Blurbalizer
  def initialize(title)
    @title  = title  # Title of the Blurbalizer app
    @blurbs = []     # Array to store all the Blurbs
  end

  # Add a new Blurb to the app
  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)  # Create a new Blurb and add it to the array
  end

  # Display the Blurb timeline, sorted by time
  def show_timeline
    # Output the title and count of blurbs
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    # Sort the blurbs by time in descending order and output their content and time
    @blurbs.sort_by { |t| t.time }
           .reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time}"  # Print the content with time next to it
    }
  end
end

# Creating a new instance of the Blurbalizer app
myapp = Blurbalizer.new "The Big Blurb"

# Adding Blurbs to the Blurbalizer app
myapp.add_a_blurb(:happy, "I just learned Ruby!")   # Add a happy blurb
myapp.add_a_blurb(:excited, "Can't wait to build more apps!") # Add an excited blurb
myapp.add_a_blurb(:thoughtful, "I wonder what's next after Ruby...") # Add a thoughtful blurb

# Display the timeline of blurbs
myapp.show_timeline
