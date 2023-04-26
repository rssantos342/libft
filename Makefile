# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ride-sou <ride-sou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/13 10:05:12 by ride-sou          #+#    #+#              #
#    Updated: 2023/04/24 17:16:26 by ride-sou         ###   ########.fr        #
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

SRC += ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c
SRC += ft_itoa.c ft_strmapi.c ft_striteri.c
SRC += ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c
SRC += ft_putnbr_fd.c

# Part 3 - Bonus functions

SRC_B = ft_lstnew.c ft_lstadd_front.c ft_lstlast.c

SRC_B += ft_lstsize.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c
SRC_B += ft_lstiter.c ft_lstmap.c

OBJS = ${SRC:.c=.o}
OBJS_B = ${SRC_B:.c=.o}

RM = rm -f
CFLAGS = -Wall -Wextra -Werror

.c.o:
		cc ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME):        ${OBJS}
				ar rcs ${NAME} ${OBJS}

all:    ${NAME}

bonus:        ${OBJS} ${OBJS_B}
				ar rcs ${NAME} ${OBJS} ${OBJS_B}

clean:
		${RM} ${OBJS} ${OBJS_B}

fclean: clean
		${RM} ${NAME}

re:     fclean all

.PHONY: all bonus clean fclean re