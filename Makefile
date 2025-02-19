# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebennix <ebennix@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 18:44:23 by ebennix           #+#    #+#              #
#    Updated: 2023/02/23 19:33:47 by ebennix          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a

CFLAGS := -g -Wall -Wextra -Werror

HEADER := ./inc/ft_printf.h

CC := cc

FILES := ./srcs/utils/ft_printf_hex  \
		 ./srcs/utils/ft_printf_put  \
		 ./srcs/ft_printf

SRC := $(FILES:=.c)

OBJ := $(SRC:.c=.o)

AR := ar -rc

RM := rm -rf

m := "MakefileAutoPush"


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

git :
	git add .
	git status
	git commit -m "$(m)"
	git push

.PHONY: all clean fclean re git
