class Blurbalizer
  def initialize(title)
    @title  = title
    @blurbs = [] # A fresh clean array for storing Blurbs
  end

  def add_a_blurb(mood, content)
    # The << means add to the end of the array
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    # Output the title and number of Blurbs
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    # Sort the blurbs by time and display them
    @blurbs.sort_by { |t| t.time }
           .reverse.each { |t|
      # Output each blurb's content and time
      puts "#{t.content.ljust(40)} #{t.time}"
    }
  end
end

# Create a new instance of the Blurbalizer class with a title
myapp = Blurbalizer.new "The Big Blurb"
