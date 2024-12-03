# Create and populate the books hash
books = {
  "Gravity's Rainbow" => :splendid,
  "1984" => :quite_good,
  "Moby Dick" => :mediocre,
  "Twilight" => :quite_not_good,
  "Fifty Shades of Grey" => :abysmal,
  "The Deep End" => :abysmal,
  "Living Colors" => :mediocre
}

# Get all book titles (keys)
puts "Book Titles:"
puts books.keys

# Get all book ratings (values)
puts "\nBook Ratings:"
puts books.values
