# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebennix <ebennix@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 18:44:23 by ebennix           #+#    #+#              #
#    Updated: 2023/02/23 19:32:25 by ebennix          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME := libftprintf.a

CFLAGS := -g -Wall -Wextra -Werror

HEADER := ft_printf.h

CC := cc

FILES := utils/ft_printf_hex  \
		 utils/ft_printf_put  \
		 ft_printf

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

.PHONY: all clean fclean re