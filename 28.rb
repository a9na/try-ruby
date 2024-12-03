# Initialize a new hash with default value 0
ratings = Hash.new { 0 }

# Loop through all the values (ratings) in the 'books' hash
books.values.each do |rate|
  # For each rating (rate), increment its count in the 'ratings' hash
  ratings[rate] += 1
end

# Print the 'ratings' hash
puts ratings
