CC= gcc
FLAGS= -Wall -Wextra -Werror 
ARCHIVE= ar rcs

SRC_FILES= srcs/ft_putchar.c srcs/ft_putstr.c srcs/ft_strcmp.c srcs/ft_strlen.c srcs/ft_swap.c 
OBJ_FILES=$(SRC_FILES:.c=.o)

HEADER= includes/ft.h

NAME= libft.a

all: $(NAME)

$(NAME): $(OBJ_FILES)
	$(ARCHIVE) $(NAME) $(OBJ_FILES)

srcs/%.o: srcs/%.c $(HEADER)
	$(CC) $(FLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_FILES)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean re all
