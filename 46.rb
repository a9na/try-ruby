# Summary #6: You've Come So Far!

# Data
# You learned how to load data from the internet (like JSON data) and navigate through complex data structures (like hashes) to select specific values.

# For example, we used a method to retrieve Shakespeare's plays from the internet, and then iterated through the data to display the titles:

def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"]
    .select { |k, v|
      year_from <= v["finished"] &&
      year_to   >= v["finished"]
    }.each { |k, v|
      puts "#{v["title"].ljust(30)} #{v["finished"]}"
    }
end

# Iterating
# You mastered iterating through data. For example, iterating over elements of a hash using `.each` and chaining multiple methods together for efficient processing.

# In our earlier example, we iterated through the plays and printed each one:
s = get_shakey
s["William Shakespeare"].each { |key, val|
  puts val["title"]
}

# Pretty Printing
# You formatted and printed data in a user-friendly way using string interpolation and methods like `.ljust`, ensuring the output is easy to read and aligned properly.

# For instance, in the print_plays method above, we formatted the title and year of the plays to align neatly. This makes the output easier to read.

# Control Flow with `if`
# You gained control over your programs using conditional logic (`if`, `else`), allowing you to execute code based on specific conditions, like time of day or any other criteria.

# For example, we used a method hungry? to determine if it was time to eat:
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours >= 12
    puts "Me hungry"
    true
  else
    puts "Me not hungry"
    false
  end
end

def eat_an(what)
  puts "Me eat #{what}\n"
end

# Using the method hungry? to decide when to eat
eat_an 'apple' if hungry?(14)
eat_an 'apple' if hungry?(10)

# What's Next?
# You are now ready for the next big step—**Classes**! You’ve gained so much knowledge so far that you’re about to discover the power of defining your own types of data and structuring your code even more efficiently with **classes**.
