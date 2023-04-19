# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ride-sou <ride-sou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/13 10:05:12 by ride-sou          #+#    #+#              #
#    Updated: 2023/04/19 10:03:08 by ride-sou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

# Part 1 - Libc functions

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c

SRC += ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c
SRC += ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strlcat.c ft_toupper.c
SRC += ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c
SRC += ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c

# Part 2 - Additional functions

SRC += ft_substr.c ft_strjoin.c

OBJS = ${SRC:.c=.o}
HEADER = libft.h
INCLUDE = -I include
CC = gcc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror
.c.o:
		${CC} ${CFLAGS} ${INCLUDE} -c $< -o ${<:.c=.o}
$(NAME):        ${OBJS}
				ar rcs ${NAME} ${OBJS} ${HEADER}
all:    ${NAME}
clean:
		${RM} ${OBJS}
fclean: clean
		${RM} ${NAME}
		${RM} exec
exec:
		${CC} ${CFLAGS} ${INCLUDE} ${NAME} -o exec
re:     fclean all exec

so:
	$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
	gcc -nostartfiles -shared -o libft.so $(OBJS)

.PHONY: all clean fclean re