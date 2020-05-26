GXX             = g++
GCC             = gcc
SRCS 			= $(shell ls -r sources/*.hpp)
OBJS			= $(SRCS:.cpp=.o)
NAME			= ASCMx128
INCLUDE_DIR		= ./
CFLAGS			= -I$(INCLUDE_DIR) -Weverything -lsystemc
MAIN			= sc_main.cpp
RM				= rm -rf
SESSION_FILE    = $(NAME).vim

vi:
	nvim -S $(SESSION_FILE)

$(NAME): 		$(OBJS)
	$(GXX) $(CFLAGS) $(MAIN) -o $@

%.o: 			%.hpp ASCMx128.h
	$(GXX) $(CFLAGS) -c $<

clean:
	$(RM) *.o

fclean:			clean
	$(RM) $(NAME)

re: clean fclean $($NAME)                                                                     
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              
                                                                                              





                                                                
                                                                
                                                                
                                                                
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
                                                                              
