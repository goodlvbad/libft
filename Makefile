# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oearlene <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 22:51:45 by oearlene          #+#    #+#              #
#    Updated: 2019/09/17 23:05:13 by oearlene         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = *.c

OBJ = *.o

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	@gcc $(FLAGS) -c $(SRC) libft.h
	@ar rc $(NAME) $(OBJ)

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(OBJ)
	@rm -rf $(NAME)

re: fclean all