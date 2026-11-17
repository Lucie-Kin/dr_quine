NAME = dr_quine_asm
CNAME = Colleen
GNAME = Grace
SNAME = Sully

NASM = nasm
ASM_FLAGS = -f macho64

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror
RM = rm -f

CSRC = Colleen/Colleen.s
GSRC = Grace/Grace.s
SSRC = Sully/Sully.s

COBJ = $(CSRC:%.s=%.o)
GOBJ = $(GSRC:%.s=%.o)
SOBJ = $(SSRC:%.s=%.o)

FILE = $(wildcard Colleen/Colleen_*) \
		$(wildcard Grace/Grace_*) \
		$(wildcard Sully/Sully_*)

all: $(NAME)

$(NAME): $(CNAME) $(GNAME) $(SNAME)

$(CNAME): $(COBJ)
	$(CC) $(CC_FLAGS) -o $@ $^

$(GNAME): $(GOBJ)
	$(CC) $(CC_FLAGS) -o $@ $^
	
$(SNAME): $(SOBJ)
	$(CC) $(CC_FLAGS) -o $@ $^

%.o: %.s
	@$(NASM) $(ASM_FLAGS) $< -o $@

clean:
	@$(RM) $(COBJ) $(GOBJ) $(SOBJ)

fclean: clean
	@$(RM) $(CNAME) $(GNAME) $(SNAME)

re: fclean all

.PHONY: all clean fclean re
