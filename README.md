# OpenGL Color Triangle Example

## Description
This project is a simple OpenGL application that renders a triangle which changes color over time. The color changes are driven by a fragment shader, which calculates colors based on a sinusoidal function of time, creating a dynamic visual effect. The application uses GLFW for window management and GLEW to manage OpenGL extensions.

## Installation

### Prerequisites
- C++ Compiler (GCC or Clang recommended)
- GLFW
- GLEW

### Setup
1. Ensure you have GLFW and GLEW installed on your system. You can usually find these in your package manager or download them from their respective websites:
   - GLFW: [https://www.glfw.org/](https://www.glfw.org/)
   - GLEW: [http://glew.sourceforge.net/](http://glew.sourceforge.net/)
2. Clone this repository or download the source files.

### Building
Using the provided Makefile:
```
make all
```

## Usage
Run the compiled executable:
```bash
./HexWrld
```

You will see a window displaying a triangle whose colors change over time. You can interact with the application by moving the mouse, as the color changes respond to the mouse position.
