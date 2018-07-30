# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rdiederi <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/10 17:27:38 by rdiederi          #+#    #+#              #
#    Updated: 2018/07/30 14:48:46 by rdiederi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC =   buffer.c\
        ft_check_fmt.c\
        ft_find_flag.c\
        ft_print_error.c\
        ft_printf.c\
        ft_printf_base.c\
        ft_printf_base_tools.c\
        ft_printf_nbr.c\
        ft_printf_nbr_tools.c\
        ft_printf_putchar.c\
        ft_printf_string.c\
        ft_printf_stringuni.c\
        ft_printf_stringuni2.c\
        ft_putchar_uni.c\
        ft_putchar_uni2.c\
        ft_type.c\
        ft_atoi.c\
        ft_bzero.c\
        ft_isalnum.c\
        ft_isalpha.c\
        ft_isascii.c\
        ft_isdigit.c\
        ft_islower.c\
        ft_isprint.c\
        ft_isspace.c\
        ft_isupper.c\
        ft_itoa.c\
        ft_lstadd.c\
        ft_lstdel.c\
        ft_lstdelone.c\
        ft_lstiter.c\
        ft_lstmap.c\
        ft_lstnew.c\
        ft_memalloc.c\
        ft_memccpy.c\
        ft_memchr.c\
        ft_memcmp.c\
        ft_memcpy.c\
        ft_memdel.c\
        ft_memmove.c\
        ft_memset.c\
        ft_putchar.c\
        ft_putchar_fd.c\
        ft_putendl.c\
        ft_putendl_fd.c\
        ft_putnbr.c\
        ft_putnbr_fd.c\
        ft_putstr.c\
        ft_putstr_fd.c\
        ft_strcat.c\
        ft_strchr.c\
        ft_strclr.c\
        ft_strcmp.c\
        ft_strcpy.c\
        ft_strdel.c\
        ft_strdup.c\
        ft_strequ.c\
        ft_striter.c\
        ft_striteri.c\
        ft_strjoin.c\
        ft_strlcat.c\
        ft_strlen.c\
        ft_strmap.c\
        ft_strmapi.c\
        ft_strncat.c\
        ft_strncmp.c\
        ft_strncpy.c\
        ft_strnequ.c\
        ft_strnew.c\
        ft_strnstr.c\
        ft_strrchr.c\
        ft_strsplit.c\
        ft_strstr.c\
        ft_strsub.c\
        ft_strtrim.c\
        ft_tolower.c\
        ft_toupper.c\

OBJ = $(SRC:%.c=%.o)

all: $(NAME)

$(NAME):
	@cp -f ./ft_printf/*.c .
	@cp -f ./ft_printf/*.h .
	@cp -f ./libft/*.c .
	@cp -f ./libft/libft.h .
	@gcc -Wall -Wextra -Werror -c $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)

clean:
	@/bin/rm -rf $(OBJ)
	@/bin/rm -rf *.c *.h
	 
fclean: clean
	/bin/rm -rf $(NAME)

re:
	make fclean && make

.PHONY: all clean fclean re
