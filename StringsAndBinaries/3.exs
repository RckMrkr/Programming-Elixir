# iex> ['cat'|'dog']
# ['cat', 100, 111, 103]

# The reason is that the list we see contains a list as its first element,
# thus it cannot write it as a string.
# The first element of that list is a list containing only of valid chars
# so it is displayed as a string ('cat').

# Using the pipe will do that. The left part will be interpreted as a single
# item, which will be attached to the list on the right side of the pipe.