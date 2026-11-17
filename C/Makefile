# LIBASM = libasm.a
NAME = Colleen

SRC  = 

FILE = $(wildcard FILE/*.txt) $(wildcard FILE/*.bin)

OBJ = $(LIBSRC:.s=.o)

NASM = nasm
NFLAGS = -f elf64 -g -F dwarf
CC = gcc
CFLAGS = -Wall -Werror -Wextra -g -no-pie
RM = rm -f
AR = ar
ARFLAGS = rcs
WRAPPER = -Wl,--wrap=malloc
GDB = gdb

all: 

# : $(OBJ)
# 	$(AR) $(ARFLAGS) $@ $^

$(NAME): $(SRC) 
	$(CC) $(CFLAGS) $(SRC) $(WRAPPER) -o $@

%.o: %.s
	$(NASM) $(NFLAGS) $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) $(FILE)

re: fclean all

.PHONY: all test clean fclean re
