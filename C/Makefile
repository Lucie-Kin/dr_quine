NAME = dr_quine_asm
CNAME = Colleen/Colleen
GNAME = Grace/Grace
SNAME = Sully/Sully

CC = gcc
CC_FLAGS = -Wall -Wextra -Werror
RM = rm -rf

CSRC = Colleen/Colleen.s
GSRC = Grace/Grace.s
SSRC = Sully/Sully.s

COBJ = $(CSRC:%.s=%.o)
GOBJ = $(GSRC:%.s=%.o)
SOBJ = $(SSRC:%.s=%.o)

FILE = $(wildcard Colleen/Colleen_*) \
		$(wildcard Grace/Grace_*) \
		$(wildcard Sully/Sully_*) \
		$(wildcard */tmp* tmp*)

all: $(NAME)

$(NAME): $(CNAME) $(GNAME) $(SNAME)

$(CNAME): $(COBJ)
	$(CC) $(CC_FLAGS) -o $@ $^

$(GNAME): $(GOBJ)
	$(CC) $(CC_FLAGS) -o $@ $^
	
$(SNAME): $(SOBJ)
	$(CC) $(CC_FLAGS) -o $@ $^

%.o: %.c
	@$(CC) $(CC_FLAGS) -c $< -o $@

clean:
	@$(RM) $(COBJ) $(GOBJ) $(SOBJ)

fclean: clean
	@$(RM) $(CNAME) $(GNAME) $(SNAME) $(NAME) $(FILE)

re: fclean all

colleen: Colleen/Colleen
	cd Colleen && ./Colleen > tmp; diff -u Colleen.c tmp && echo -e "\nQUINE OK\n"

grace: Grace/Grace
	cd Grace && ./Grace ; diff Grace.c Grace_kid.c && echo -e "\nQUINE OK\n"

sully: $(SOBJ)
	$(CC) $(CC_FLAGS) $(SOBJ) -o $(SNAME); cd Sully && ./Sully
	@sleep 1
	@echo -e "\n"
	cd Sully && git diff --no-index --word-diff=porcelain Sully_2.c Sully_4.c | grep -E '^[+-][^+-]'

.PHONY: all clean fclean re colleen grace sully
