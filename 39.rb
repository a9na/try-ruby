s = get_shakey  # This method fetches and parses the JSON data, storing it in 's'

s["William Shakespeare"].each { |key, val|  # Iterates through the array of plays under the "William Shakespeare" key
  puts val["title"]  # For each play, it prints the 'title' field of the hash
}
