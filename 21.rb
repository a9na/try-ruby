# The poem is stored in the 'poem' variable. 
# For example, the poem might look like this:
# "I like toast with butter,
# Toast for breakfast, toast for lunch."

# The .lines method splits the poem into an array of lines.
# It breaks the string into multiple elements, each representing one line.
# For example:
# poem.lines would give us:
# ["I like toast with butter,\n", "Toast for breakfast, toast for lunch.\n"]

# The .reverse method is called on the array of lines to reverse their order.
# It changes the order of the lines, but does not modify the content of each line.
# After applying .reverse, the array would be:
# ["Toast for breakfast, toast for lunch.\n", "I like toast with butter.\n"]

# The result of poem.lines.reverse is stored in 'reversed_lines_poem'.
reversed_lines_poem = poem.lines.reverse

# Finally, we use puts to print the reversed lines back to the screen.
# The 'puts' method will output the reversed order of the lines.
puts reversed_lines_poem
