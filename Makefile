# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iostancu <iostancu@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/02/24 18:59:41 by iostancu          #+#    #+#              #
#    Updated: 2022/03/15 20:34:20 by iostancu         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libftprintf.a
SRCS	= ft_printf.c string_chars.c put_nbr.c nbr_base.c
OBJS	= ${SRCS:.c=.o}
CC		= gcc
RM		= rm -f
CFLAGS	= -Wall -Wextra -Werror -g
AR		= ar rc

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

${NAME}:	${OBJS}
		${AR} ${NAME} ${OBJS}
		ranlib ${NAME}
clean:
		${RM} ${OBJS}

all:	${NAME}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: re
