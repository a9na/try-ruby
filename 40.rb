def count_plays(year)
  s = get_shakey  # Fetch the data from the internet

  s["William Shakespeare"]
    .select { |k, v|  # Select plays based on the condition inside the block
      v["finished"] == year  # Filter plays based on the 'finished' year
    }
    .each { |key, val|  # Iterate through the selected plays
      puts val["title"]  # Print the title of each play
    }
    .count  # Return the count of the selected plays
end

puts count_plays(1591)  # Call the method with the year 1591
