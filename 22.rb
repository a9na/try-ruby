# Let's start with the original poem.
poem = "I like toast with butter,\nToast for breakfast, toast for lunch.\n"

# The '.lines' method splits the poem into an array of lines.
# It treats every line break as a point to separate the string into individual elements.
# So, if 'poem' is:
# "I like toast with butter,
# Toast for breakfast, toast for lunch."
# After calling 'poem.lines', it becomes:
# ["I like toast with butter,\n", "Toast for breakfast, toast for lunch.\n"]

# The '.reverse' method is then applied to the array of lines to reverse their order.
# It changes the order of the lines but keeps the content of each line intact.
# After applying '.reverse', the array would become:
# ["Toast for breakfast, toast for lunch.\n", "I like toast with butter.\n"]

# Finally, '.join' is used to join the reversed array of lines back into a single string.
# The '.join' method concatenates the array elements into one string.
# By default, '.join' joins them with an empty string, so we don't add any extra separator.
# The result would be:
# "Toast for breakfast, toast for lunch.\nI like toast with butter.\n"

puts poem.lines.reverse.join

# This is an example of **method chaining**.
# In Ruby, you can chain multiple methods together in a single line of code.
# Here, we are chaining three methods: .lines, .reverse, and .join.
# The result of each method is passed to the next one, leading to a cleaner and more concise code.

# To break it down further:
# 1. 'poem.lines' splits the poem into an array of lines.
# 2. 'poem.lines.reverse' reverses the order of the lines.
# 3. 'poem.lines.reverse.join' combines those reversed lines into a single string.

# The final output would be the reversed lines of the poem printed on the screen.

