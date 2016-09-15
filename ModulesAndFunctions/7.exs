# Convert a float to a string with two decimals. (Erlang)
hd :io_lib.format("~.2f", [12.34])

# Get the value of an operating-system environment variable. (Elixir)
System.get_env("PATH")

# Return the extension of a file name (Elixir)
Path.extname("/path/is/irrelevant/file.ext")

# Return the current working directory. (Elixir)
System.cwd()

# Find a package that converts a string contain JSON into Elixir data structures
# Poison - https://hex.pm/packages/poison

System.cmd("ls", ["-lrt"])