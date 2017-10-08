# Makefile C++ / SFML By yovano_c

COLOR_OFF	= \033[0m
COLOR_GREEN = \033[32;01m
COLOR_RED	= \033[31;01m

CXX			= c++

RM			= rm -f

NAME		= astar

CXXFLAGS	+= -Wextra -Wall -W -Wpedantic -std=c++14 -O2
CXXFLAGS	+= -I./include
LDFLAGS		= -L./lib

#SFML_LIBS_ALL	= -lsfml-graphics -lsfml-window -lsfml-audio -lsfml-network -lsfml-system
SFML_LIBS	= -lsfml-graphics -lsfml-window -lsfml-system

SRC			= $(wildcard src/*.cpp)
OBJ			= $(SRC:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@$(CXX) -o $(NAME) $(OBJ) $(LDFLAGS) $(SFML_LIBS)
	@echo -e "$(COLOR_GREEN)Program '$(NAME)' compiled.$(COLOR_OFF)"

clean:
	@$(RM) $(OBJ)
	@echo -e "$(COLOR_RED)$(NAME) -> Object files deleted.$(COLOR_OFF)"

fclean:	clean
	@$(RM) $(NAME)
	@echo -e "$(COLOR_RED)Program '$(NAME)' deleted.$(COLOR_OFF)"

re:	fclean all

run: all
	./$(NAME)

.PHONY:	fclean clean all re run
