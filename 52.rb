class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now              # Automatically set the current time when a Blurb is created
    @content = content[0..39]        # Limit the content to the first 40 characters (if necessary)
    @mood    = mood                  # Set the mood of the Blurb to the passed-in value
  end
end

# Creating a new Blurb
blurb1 = Blurb.new(:sick, "I feel terrible today because I caught a cold!")
puts "Blurb 1:"
puts "Time: #{blurb1.time}"      # Time the Blurb was created
puts "Content: #{blurb1.content}"  # Content of the Blurb
puts "Mood: #{blurb1.mood}"      # Mood of the Blurb

# Creating another Blurb
blurb2 = Blurb.new(:confused, "I can not believe Mt. Hood was stolen!")
puts "\nBlurb 2:"
puts "Time: #{blurb2.time}"      # Time the Blurb was created
puts "Content: #{blurb2.content}"  # Content of the Blurb
puts "Mood: #{blurb2.mood}"      # Mood of the Blurb
