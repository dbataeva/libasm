# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cchromos <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/05 16:48:36 by cchromos          #+#    #+#              #
#    Updated: 2021/05/05 16:48:39 by cchromos         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	 	=	libasm.a

SRCS 		=	ft_strcpy.s \
				ft_strcmp.s \
				ft_strlen.s \
				ft_write.s \
				ft_read.s \
				ft_strdup.s

OBJS		=	$(SRCS:%.s=%.o)

AS			=	nasm

ASFLAGS		=	-f macho64

RM			=	rm -f

all:		${NAME}

${NAME}:	${OBJS}
			ar rc ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean ${NAME}

bonus:		all ${OBJS_B}
			ar rc ${NAME} ${OBJS_B}

.PHONY:		all clean fclean re
