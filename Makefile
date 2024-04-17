# Define compiler
CXX=g++

# Define any compile-time flags
CXXFLAGS=-std=c++11 -Wall -Wextra -MMD -MP

# Define any directories containing header files other than /usr/include
INCLUDES=-I/usr/include

# Define library paths in addition to /usr/lib
LFLAGS=-L/usr/lib

# Define any libraries to link into executable
LIBS=-lglfw -lGLEW -lGL -lGLU

# Define the C++ source files
SRCS=HexWrld.cpp

# Define the C++ object files 
OBJS=$(SRCS:.cpp=.o)

# Define the executable file 
MAIN=HexWrld

.PHONY: all clean

all: $(MAIN)
	@echo Simple compiler named $(MAIN) has been compiled

$(MAIN): $(OBJS) 
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

# Suffix replacement rule for building .o's from .cpp's
.cpp.o:
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) $(OBJS) $(OBJS:.o=.d) $(MAIN)

-include $(OBJS:.o=.d)
