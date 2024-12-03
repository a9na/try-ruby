# Create an empty hash to store book reviews
books = {}

# Add initial book reviews with their ratings
books["Gravity's Rainbow"] = :splendid
books["1984"] = :quite_good
books["Moby Dick"] = :mediocre
books["Twilight"] = :quite_not_good
books["Fifty Shades of Grey"] = :abysmal

# Add two more book reviews
books["The Deep End"] = :abysmal
books["Living Colors"] = :mediocre

# Print out the entire hash with all reviews
puts books

# Print the number of reviews in the hash
puts books.length
