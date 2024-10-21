CC = cc
CFLAGS = -Wall -Werror -Wextra -g3

NAME = libft.a

SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
       ft_itoa.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
       ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c \
       ft_putnbr_fd.c ft_putendl_fd.c ft_putstr_fd.c ft_strchr.c \
       ft_split.c ft_strdup.c ft_striter1.c ft_strlcat.c ft_strlcpy.c \
       ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c \
       ft_strjoin.c ft_substr.c ft_tolower.c ft_toupper.c ft_strtrim.c 

BONUS_SRCS = ft_lstnew.c ft_lstadd_front.c ft_lstadd_back.c ft_lstclear.c \
			 ft_lstdelone.c ft_lstiter.c ft_lstlast.c ft_lstmap.c ft_lstsize.c


OBJS = $(SRCS:.c=.o)

BONUS_OBJS = $(BONUS_SRCS:.c=.o)


all: $(NAME)

$(NAME): $(OBJS)
	$(AR) rcs $(NAME) $(OBJS)

bonus: $(OBJS) $(BONUS_OBJS)
	$(AR) rcs $(NAME) $(OBJS) $(BONUS_OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -f $(OBJS) $(BONUS_OBJS)


fclean: clean
	rm -f $(NAME)

re: fclean all


.PHONY: all, clean, fclean, re, bonus



# r: Insert the files into the archive
# c: Create the archive if it does not exist
# s: Create an index (symbol table) for the library, which helps in linking

# Pattern rule to compile object files; 
# 	the '%' is a string placeholder for the name of each program
#	-c tells the compiler to compile into an object file
#	$< this indicates a prerequisite: .c has to be compiled
#	-o $@ indicates the output filename, which will be the name of the target

# -f forces the removal without confirmation