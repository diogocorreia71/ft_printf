# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: diodos-s <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/02 10:23:13 by diodos-s          #+#    #+#              #
#    Updated: 2023/05/02 13:09:01 by diodos-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = 

OBJS = $(SRC.c=.o)

INCLUDE = -I include
MAKE = make -C
CC = cc
RM = rm -f
CFLAGS = -Wextra -Wall -Werror
LIBFT_PATH = libft
LIBFT = ${LIBFT_PATH}/libft.a

.c.o:
	@$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $(<:.c=.o)

$(NAME):	$(OBJS)
			$(MAKE) $(LIBFT_PATH)
			cp $(LIBFT) $(NAME)
			@ar rcs $(NAME) $(OBJS)

all:		$(NAME)

clean:
			$(MAKE) $(LIBFT_PATH) clean
			@$(RM) $(OBJS)

fclean:		clean
			$(MAKE) $(LIBFT_PATH) fclean
			@$(RM) $(OBJS)

re:			fclean all

.PHONY:		all clean fclean re
