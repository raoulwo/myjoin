BUILD_TARGET := myjoin

BUILD_DIR := ./build
SRC_DIR := ./src

CXX := g++
CXXFLAGS := -O2

$(BUILD_DIR)/$(BUILD_TARGET): $(BUILD_DIR)/main.o $(BUILD_DIR)/myjoin.o
	$(CXX) $^ -o $@

$(BUILD_DIR)/main.o: $(SRC_DIR)/main.cpp
	@mkdir -p $(dir $@)
	$(CXX) -c $(CXXFLAGS) $^ -o $@

$(BUILD_DIR)/myjoin.o: $(SRC_DIR)/myjoin.cpp
	@mkdir -p $(dir $@)
	$(CXX) -c $(CXXFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
