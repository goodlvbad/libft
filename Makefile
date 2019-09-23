# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oearlene <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/17 22:51:45 by oearlene          #+#    #+#              #
#    Updated: 2019/09/23 06:02:29 by oearlene         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

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
		ft_lstadd.c

OBJ =	ft_memset.o \
     	ft_bzero.o \
     	ft_memcpy.o \
     	ft_memccpy.o \
     	ft_memmove.o \
     	ft_memchr.o \
     	ft_memcmp.o \
     	ft_strlen.o \
     	ft_strlcat.o \
     	ft_strdup.o \
     	ft_strcpy.o \
     	ft_strncpy.o \
     	ft_strcat.o \
     	ft_strncat.o \
     	ft_strchr.o \
     	ft_strrchr.o \
     	ft_strnstr.o \
     	ft_strstr.o \
     	ft_strcmp.o \
     	ft_strncmp.o \
     	ft_atoi.o \
     	ft_isascii.o \
     	ft_isdigit.o \
     	ft_isalpha.o \
     	ft_isalnum.o \
     	ft_isprint.o \
     	ft_toupper.o \
     	ft_tolower.o \
     	ft_putchar_fd.o \
     	ft_putstr_fd.o \
     	ft_putnbr_fd.o \
     	ft_putendl_fd.o \
     	ft_putchar.o \
     	ft_putstr.o \
     	ft_putnbr.o \
     	ft_putendl.o \
     	ft_memalloc.o \
     	ft_memdel.o \
     	ft_strdel.o \
     	ft_strclr.o \
     	ft_striter.o \
     	ft_striteri.o \
     	ft_strnew.o \
     	ft_strmap.o \
     	ft_strmapi.o \
     	ft_strsub.o \
     	ft_strjoin.o \
     	ft_strtrim.o \
     	ft_strsplit.o \
     	ft_itoa.o \
     	ft_strequ.o \
     	ft_strnequ.o \
     	ft_lstnew.o \
     	ft_lstadd.o

HED = libft.h

FLAGS = -Wall -Wextra -Werror -c

all: $(NAME)

$(OBJ): $(SRC)
	@gcc $(FLAGS) $(SRC)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ) $(HED)

clean:
	@/bin/rm -rf $(OBJ)

fclean: clean
	@/bin/rm -rf $(NAME)

re: fclean all