# cl compiler
CXX=g++

# Define any compile-time flags
CXXFLAGS=-std=c++11 -Wall -Wextra -MMD -MP

INCLUDES=-I../glm -I/mingw64/include

LFLAGS=-L/mingw64/lib

# Define any libraries to link into executable
# Since we are on Windows with MinGW, we typically don't need to explicitly link against GL and GLU
LIBS=-lglfw3 -lglew32 -lopengl32

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
	$(CXX) $(CXXFLAGS) -o $(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

# Suffix replacement rule for building .o's from .cpp's
.cpp.o:
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(RM) *.o *.d $(MAIN)

-include $(OBJS:.o=.d)
