# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oearlene <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 22:51:45 by oearlene          #+#    #+#              #
#    Updated: 2019/10/05 00:33:41 by oearlene         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_PATH = ./srcs/
INC_PATH = ./includes/
OBJ_PATH = ./obj/

SRC = $(addprefix $(SRC_PATH),$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH),$(OBJ_NAME))
OBJ_1 = $(addprefix $(OBJ_PATH),$(OBJ_L))
INC = $(addprefix -I ,$(INC_PATH))

SRC_NAME =  ft_printf.c \
            parser.c \
            print.c \
            print_nbr_conversions.c \
            print_numbers.c \
            print_hex_nb.c \
            get_conv_f.c \
            print_strings.c

SRC =	ft_memset.c \
		ft_bzero.c \
		ft_memcpy.c \
		ft_memccpy.c \
		ft_memmove.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strlen.c \
		ft_strlcat.c \
		ft_strdup.c \
		ft_strcpy.c \
		ft_strncpy.c \
		ft_strcat.c \
		ft_strncat.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_strstr.c \
		ft_strcmp.c \
		ft_strncmp.c \
		ft_atoi.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isalpha.c \
		ft_isalnum.c \
		ft_isprint.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putnbr_fd.c \
		ft_putendl_fd.c \
		ft_putchar.c \
		ft_putstr.c \
		ft_putnbr.c \
		ft_putendl.c \
		ft_memalloc.c \
		ft_memdel.c \
		ft_strdel.c \
		ft_strclr.c \
		ft_striter.c \
		ft_striteri.c \
		ft_strnew.c \
		ft_strmap.c \
		ft_strmapi.c \
		ft_strsub.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_strsplit.c \
		ft_itoa.c \
		ft_strequ.c \
		ft_strnequ.c \
		ft_lstnew.c \
		ft_lstadd.c \
		ft_lstiter.c \
		ft_lstdelone.c \
		ft_lstdel.c \
		ft_lstmap.c \

OBJ_L = $(SRC:.c=.o)
OBJ_NAME = $(SRC_NAME:.c=.o)

INC_NAME = ft_printf.h
HED = libft.h

FLAGS = -Wall -Wextra -Werror

.PHONY: all clean fclean re CREATE_OBJ_PATH

all: $(NAME)

CREATE_OBJ_PATH:
	@mkdir -p $(OBJ_PATH)

$(OBJ_PATH)%.o: %.c
	@gcc $(FLAGS) $(INC) -c $< -o $@

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	@gcc $(FLAGS) $(INC) $(INC)$(HED) -o $@ -c $<

$(NAME): CREATE_OBJ_PATH $(OBJ_1) $(OBJ)
	@ar rc $(NAME) $(OBJ_1) $(OBJ) $(INC_PATH)$(HED) $(INC_PATH)$(INC_NAME)
	@ranlib $(NAME)

clean:
	@rm -rf $(OBJ_PATH)

fclean: clean
	@rm -f $(NAME)

re: fclean all