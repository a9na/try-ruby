class Blurb
  attr_accessor :content, :time, :mood

  def initialize(content, mood)
    @content = content
    @time = Time.now
    @mood = mood
  end

  def display
    puts "Blurb posted at #{@time} with mood: #{@mood}"
    puts "Content: #{@content}"
  end
end
