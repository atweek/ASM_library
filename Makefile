
NAME =  libasm.a
CC = gcc
NA = nasm

CFLAGS = -Wall -Wextra -Werror -I. -c -g
NFLAGS = -fmacho64 -g

SRC =  ft_strlen.s ft_strcpy.s ft_strcmp.s

OBJ = ${SRC:.s=.o}

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "\033[32mlibrary assembled\033[0m"


%.o: %.s
	@$(NA) $(NFLAGS) $<

test: $(OBJ)
	@gcc main.c $(OBJ) -g && ./a.out

clean:
	@rm -f *.o

fclean: clean
	@rm -f $(NAME)

re: fclean all
	
.PHONY: clean fclean all re