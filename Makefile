##
## Makefile for fondations in /home/m4t/etna/fondations/
##
## Made by Mathieu Robardey
## Login   <robard_m@etna-alternance.net>
##
## Started on  Fri Jul  3 14:16:31 2015 Mathieu Robardey
## Last update Thu Jul 23 22:35:58 2015 Mathieu Robardey
##

CC = gcc
NAME = fondations
SRC = main.c 		 			 \
			src/args.c 			 \
			src/tcp_client.c \
			src/fondation.c

OBJ = $(SRC:%.c=%.o)
CFLAGS = -W -Wall -Werror -Ilibmy/ -Iheaders

LIB = -lmy -Llibmy/

RM	 		= rm -f

$(NAME) : $(OBJ)
					$(CC) $(CFLAGS) $(OBJ) -o $(NAME) $(LDFLAGS) $(LIB)

all: $(NAME)
clean:
					$(RM) $(OBJ)
					$(RM) $(NAME)

re:				clean all
