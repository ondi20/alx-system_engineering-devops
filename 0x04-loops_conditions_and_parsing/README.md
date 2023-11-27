#Loops conditions and Parsing
  Objectives
    How to create SSH keys
    What is the advantage of using #!/usr/bin/env bash over #!/bin/bash
    How to use while, until and for loops
    How to use if, else, elif and case condition statements
    How to use the cut command
    What are files and other comparison operators, and how to use them

    ### Creating SSH Keys:

To generate SSH keys, you can use the `ssh-keygen` command. Open a terminal and type:

```bash
ssh-keygen -t rsa -b 2048
```

This command will generate a 2048-bit RSA key pair. You can choose a different key type and length if needed. Follow the prompts, and the keys will be generated in the `~/.ssh/` directory.

### `#!/usr/bin/env bash` vs. `#!/bin/bash`:

The `#!/usr/bin/env bash` shebang is more flexible than specifying the absolute path to the bash interpreter (`#!/bin/bash`). Using `env` allows the system to search the `PATH` environment variable for the correct `bash` executable. This can be helpful in scenarios where the absolute path may vary across systems.

### Loops:

#### `while` Loop:

```bash
while [ condition ]; do
  # commands
done
```

#### `until` Loop:

```bash
until [ condition ]; do
  # commands
done
```

#### `for` Loop:

```bash
for variable in [list]; do
  # commands
done
```

### Conditional Statements:

#### `if`, `else`, `elif`:

```bash
if [ condition ]; then
  # commands
elif [ condition ]; then
  # commands
else
  # commands
fi
```

#### `case` Statement:

```bash
case "$variable" in
  pattern1)
    # commands
    ;;
  pattern2)
    # commands
    ;;
  *)
    # default case
    ;;
esac
```

### `cut` Command:

The `cut` command is used to extract sections from each line of a file.

```bash
cut -d' ' -f1,2 filename.txt
```

This example uses a space (' ') as the delimiter and extracts the first and second fields from each line in `filename.txt`.

### Comparison Operators:

Comparison operators in shell scripting:

- **File Operators**:
  - `-e file`: Checks if the file exists.
  - `-f file`: Checks if the file is a regular file.
  - `-d file`: Checks if the file is a directory.
  - ... and more.

- **String Operators**:
  - `=`, `!=`: Equal, not equal.
  - `-z string`: True if the string is empty.
  - `-n string`: True if the string is not empty.

- **Numeric Operators**:
  - `-eq`, `-ne`: Equal, not equal.
  - `-lt`, `-le`, `-gt`, `-ge`: Less than, less than or equal, greater than, greater than or equal.

Examples:

```bash
if [ "$a" -eq "$b" ]; then
  # commands
fi

if [ -e "$file" ]; then
  # commands
fi
```

These are basic constructs, and you can combine them for more complex conditions in your scripts.