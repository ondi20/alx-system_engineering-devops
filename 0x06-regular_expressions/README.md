#Regular Expressions
In Ruby, regular expressions (regex) are created using the `Regexp` class or a literal notation. Here are some basics of working with regular expressions in Ruby:

### Creating a Regular Expression:

```ruby
# Using Regexp class
regex = Regexp.new("pattern")

# Using literal notation
regex_literal = /pattern/
```

### Matching a String against a Regular Expression:

```ruby
str = "Hello, World!"

if str =~ /Hello/
  puts "Match found!"
else
  puts "No match found."
end
```

### Using Match Data:

```ruby
str = "The year is 2023."

match_data = /(\d{4})/.match(str)

if match_data
  puts "Year: #{match_data[1]}"
else
  puts "No match found."
end
```

### Regular Expression Modifiers:

```ruby
# Case-insensitive matching
regex_case_insensitive = /pattern/i

# Multiline matching
regex_multiline = /pattern/m
```

### Common Regular Expression Patterns:

- **Anchors:**
  - `^`: Beginning of a line.
  - `$`: End of a line.

- **Character Classes:**
  - `[abc]`: Match any character `a`, `b`, or `c`.
  - `[^abc]`: Match any character except `a`, `b`, or `c`.
  - `\d`: Match any digit (0-9).
  - `\w`: Match any word character (alphanumeric + underscore).

- **Quantifiers:**
  - `*`: 0 or more occurrences.
  - `+`: 1 or more occurrences.
  - `?`: 0 or 1 occurrence.
  - `{n}`: Exactly `n` occurrences.
  - `{n,}`: `n` or more occurrences.
  - `{n,m}`: Between `n` and `m` occurrences.

- **Grouping and Capturing:**
  - `()`: Grouping.
  - `(?:...)`: Non-capturing group.
  - `\1`, `\2`, etc.: Backreferences.

### Example:

```ruby
email_pattern = /\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b/

email = "user@example.com"

if email =~ email_pattern
  puts "Valid email address."
else
  puts "Invalid email address."
end
```

This is a basic overview of working with regular expressions in Ruby.
