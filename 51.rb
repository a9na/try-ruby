class Blurb
  attr_accessor :content, :time, :mood

  def initialize(mood, content="")
    @time    = Time.now              # Automatically set the current time when a Blurb is created
    @content = content[0..39]        # Limit the content to the first 40 characters (if necessary)
    @mood    = mood                  # Set the mood of the Blurb to the passed-in value
  end
end

# Creating a new Blurb with mood and content
blurb = Blurb.new(:sick, "I feel terrible today because I caught a cold!")
puts blurb.time    # Displays the time the Blurb was created
puts blurb.content # Displays the content (limited to 40 characters)
puts blurb.mood    # Displays the mood of the Blurb
