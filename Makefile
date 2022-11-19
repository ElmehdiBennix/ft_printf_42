# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebennix <ebennix@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 18:44:23 by ebennix           #+#    #+#              #
#    Updated: 2022/11/19 04:38:30 by ebennix          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a 
CFLAGS := -Wall -Wextra -Werror
HEADER := printf.h
CC := cc
SRC := ft_printf_hex.c 	\
	ft_printf_ptr.c		\
	ft_printf_put.c 	\
	ft_printf.c

OBJ := $(SRC:.c=.o)
AR := ar -rc
RM := rm -rf

all : $(NAME)

$(NAME):$(OBJ)
	$(AR) $(NAME) $(OBJ)

%.o:%.c $(HEADER)
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re