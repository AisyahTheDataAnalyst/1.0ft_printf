# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aimokhta <aimokhta@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/27 20:26:48 by aimokhta          #+#    #+#              #
#    Updated: 2025/01/03 19:28:45 by aimokhta         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libftprintf.a

SRC		=	ft_printf.c \
			ft_printf_putnbr.c \
			ft_printf_putchar.c \
			ft_printf_putstr.c \
			ft_printf_pointer.c \
			ft_printf_unsigned.c \
			ft_printf_hex.c

OBJ		= $(SRC:.c=.o)
RM		= rm -f
LIBC	= ar -rcs
CC		= cc
FLAG	= -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	$(LIBC) $(NAME) $(OBJ)

%.o: %.c
	$(CC) $(FLAG) -c $< -o $@

clean: 
	$(RM) $(OBJ)

fclean: clean 
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re