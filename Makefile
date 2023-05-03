# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: diodos-s <diodos-s@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/02 10:23:13 by diodos-s          #+#    #+#              #
#    Updated: 2023/05/03 10:44:38 by diodos-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC =  ft_printstd.c ft_printptr.c ft_printuns.c ft_printf.c ft_printhex.c

OBJS = ${SRC:.c=.o}

INCLUDE =	-I .
MAKE =	make -C
CC =	cc
RM =	rm -f
CFLAGS = -Wextra -Wall -Werror
LIBFT_PATH =	libft
LIBFT =	${LIBFT_PATH}/libft.a

.o:.c
		${CC} ${CFLAGS} ${INCLUDE} -c $< -o ${<:.c=.o}
		
$(NAME): ${OBJS}
				${MAKE}	${LIBFT_PATH}	all
				cp	${LIBFT}	${NAME}
				ar rcs	${NAME}	${OBJS}

all:		${NAME}

clean:
		${MAKE} ${LIBFT_PATH} clean
		${RM} ${OBJS}

fclean:	clean
		${MAKE} ${LIBFT_PATH} fclean
		${RM} ${NAME}

re:	fclean all

.PHONY:	all clean fclean re
