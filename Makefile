TARGET_EXEC := adder
BUILD_DIR := build
SRC_DIR := src

CXX := g++

all: $(BUILD_DIR)/$(TARGET_EXEC)

test: all
	./test.sh

run: all
	$(BUILD_DIR)/$(TARGET_EXEC)

clean:
	rm -r $(BUILD_DIR)

$(BUILD_DIR)/$(TARGET_EXEC): $(BUILD_DIR)/main.o | $(BUILD_DIR)
	$(CXX) $^ -o $@

$(BUILD_DIR)/main.o: $(SRC_DIR)/main.cpp | $(BUILD_DIR)
	$(CXX) -c $< -o $@

$(BUILD_DIR):
	mkdir $(BUILD_DIR)
