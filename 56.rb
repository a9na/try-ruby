class Blurb
  attr_accessor :content, :time, :mood

  # Initialize the Blurb with a mood and content, defaulting to empty string if no content is provided.
  def initialize(mood, content="")
    @time    = Time.now         # The time the Blurb is created
    @content = content[0..39]   # Limiting content to 40 characters
    @mood    = mood
  end

  # Method to convert the mood into a smiley face
  def moodify
    case @mood
    when :sad
      ":-("
    when :happy
      ":-)"
    when :angry
      ">:("
    when :surprised
      ":-O"
    else
      ":-|"  # Default neutral mood
    end
  end
end

class Blurbalizer
  def initialize(title)
    @title  = title  # Title of the Blurbalizer app
    @blurbs = []     # Array to store all the Blurbs
  end

  # Method to add a new Blurb with mood and content to the app
  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)  # Add a new Blurb to the array
  end

  # Method to display the Blurb timeline
  def show_timeline
    puts "Blurbalizer: #{@title} has #{@blurbs.count} Blurbs"

    # Sort the blurbs by time and display each one with its content, mood, and timestamp
    @blurbs.sort_by { |t| t.time }
           .reverse.each do |t|
      puts "#{t.content.ljust(40)} #{t.moodify} #{t.time}"
    end
  end
end

# Example usage:

# Create a new Blurbalizer app
myapp = Blurbalizer.new("The Big Blurb")

# Add some blurbs with different moods
myapp.add_a_blurb(:happy, "I learned Ruby today!")
myapp.add_a_blurb(:sad, "I lost my keys...")
myapp.add_a_blurb(:angry, "Ruby gave me a headache!")
myapp.add_a_blurb(:surprised, "I can't believe how much I learned!")

# Show the timeline of blurbs
myapp.show_timeline
