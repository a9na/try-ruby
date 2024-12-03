require 'open-uri'  # We use 'open-uri' to open a URL
require 'json'      # If we're expecting JSON data

def get_shakey
  url = 'https://example.com/shakespeare_works.json'  # Replace with actual URL for Shakespeare's works in JSON format
  json_data = URI.open(url).read   # Fetch and read the content from the URL
  data = JSON.parse(json_data)     # Parse the JSON data

  data.each do |work|
    puts work['title']  # Assuming each work has a 'title' field
  end
end

get_shakey
