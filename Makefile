CXX = g++
CXXFLAGS = -Wall -O2
LIBS = 
INCLUDES =

BUILD = main
BUILD_DIR = build
SRC_DIR = src

SRC = main.cpp
SRCS = $(addprefix $(SRC_DIR)/, $(SRC))

TARGET = $(BUILD_DIR)/$(BUILD)

$(TARGET): $(SRCS)
	@mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) -o $@ $^ $(INCLUDES) $(LIBS)

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET)
