NAME				= ASCMx128
TEST				= ASCMx128-test
DESC				= 
GXX             	= g++
GCC             	= gcc
SRCS 				= $(shell ls -r sources/*/*.hpp)
OBJS				= $(SRCS:.cpp=.o)
INCLUDE_MAIN		= ./includes/$(NAME).hpp
INCLUDES			= -I./includes -I./sources
MAIN				= sources/sc_main.cpp
MAIN_TEST			= sources/sc_test.cpp
RM					= rm -rf
SESSION_FILE    	= Session.vim
BUILD_NUMBER		= .build_number
VERSION_NUMBER		= .version_number
CURRENT_VERSION		= $(shell cat $(VERSION_NUMBER))
CURRENT_BUILD		= $(shell cat $(BUILD_NUMBER))
BUILD_DATE			= $(shell stat -f "%Sm" -t "%Y-%m-%d %H:%M" $(BUILD_NUMBER))
CFLAGS				= -D NAME="\"$(NAME)\"" -D VERSION="\"$(CURRENT_VERSION)\"" -D BUILD="\"$(CURRENT_BUILD)\"" -D BUILD_DATE="\"$(BUILD_DATE)\"" -D DESC="\"$(DESC)\"" $(INCLUDES) -Weverything -lsystemc
.PREFIXES:

all: 				$(NAME)


$(NAME): 			$(OBJS)
	$(GXX) $(CFLAGS) $(MAIN) -o $@

ctest:				$(OBJS)
	$(GXX) $(CFLAGS) $(MAIN_TEST) -o $(TEST)

%.o: 				%.hpp $(INCLUDE_MAIN)
	$(GXX) $(CFLAGS) -c $<

clean:
	$(RM) *.o

fclean:				clean
	$(RM) $(NAME)

re: clean fclean all                                                                    


run: 				$(NAME)
	./$(NAME)

test:				ctest
	./$(TEST)

reset_version:
	echo 0  > $(VERSION_NUMBER)

new_version:
	bc <<< "${CURRENT_VERSION}+1" > $(VERSION_NUMBER)

reset_build:
	echo 1  > $(BUILD_NUMBER)

new_build:			$(SRCS) $(INCLUDE_MAIN)
	bc <<< "${CURRENT_BUILD}+1" > $(BUILD_NUMBER)

push:				new_build
	git push origin master

vi:
	nvim -S $(SESSION_FILE)

.PHONY:				all run $(NAME) clean fclean re vi

.SUFIXES:
























