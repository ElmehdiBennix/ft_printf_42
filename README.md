# ft_printf

## Introduction
`ft_printf` is a custom implementation of the standard `printf()` function in C. The goal of this project is to understand variadic functions and efficient formatted output handling. By developing `ft_printf`, we gain insight into low-level input/output operations, format specifiers, and argument parsing.

Once completed, `ft_printf` can be added to `libft` and used in other C projects.

## Features
- Supports a subset of `printf()` functionalities.
- Handles multiple format specifiers.
- Implements variadic function handling.
- Creates a static library `libftprintf.a`.
- Proper memory management to prevent leaks.

## Supported Format Specifiers
- `%c` – Prints a single character.
- `%s` – Prints a string.
- `%p` – Prints a pointer address in hexadecimal.
- `%d` – Prints a decimal (base 10) number.
- `%i` – Prints an integer in base 10.
- `%u` – Prints an unsigned decimal (base 10) number.
- `%x` – Prints a number in lowercase hexadecimal (base 16).
- `%X` – Prints a number in uppercase hexadecimal (base 16).
- `%%` – Prints a percent sign.

## Usage
### Compilation
To compile `ft_printf` as a static library, use the provided `Makefile`:
```sh
make
```
This will generate `libftprintf.a`.

### Linking with Other Projects
To use `ft_printf` in other C programs, compile it and link the library:
```sh
gcc main.c -L. -lftprintf -o my_program
```

### Example Usage
```c
#include "ft_printf.h"

int main() {
    ft_printf("Hello, %s!\n", "world");
    ft_printf("Decimal: %d, Hex: %x\n", 42, 42);
    return 0;
}
```

## Makefile Targets
- `make`: Compile `ft_printf`.
- `make clean`: Remove object files.
- `make fclean`: Remove executables and object files.
- `make re`: Recompile everything.
