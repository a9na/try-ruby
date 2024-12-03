# This function prints the plays written by Shakespeare in a given year range.
def print_plays(year_from, year_to)
  # get_shakey is a method that retrieves data from the internet and gives us a hash
  # containing Shakespeare's works. The "William Shakespeare" key holds the plays.
  # We use .select to filter the plays based on the year they were finished.
  
  # This block filters out the plays finished between year_from and year_to
  get_shakey["William Shakespeare"]
    .select { |k, v|
      year_from <= v["finished"] &&  # Select plays finished on or after `year_from`
      year_to   >= v["finished"]     # Select plays finished on or before `year_to`
    }
    # The .each method iterates over each of the plays returned by the select block
    # and prints them in the desired format.
    .each { |k, v|
      # Using string interpolation to print the year and the title together:
      # "#{v["finished"]} -> #{v["title"]}" 
      # We want to print the year first, then an arrow (->), and then the title of the play.
      puts "#{v["finished"]} -> #{v["title"]}"
    }
end

# Calling the print_plays method with a specific year range (1600 to 1605).
print_plays(1600, 1605)
