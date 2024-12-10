BUILD_TARGET := myjoin

BUILD_DIR := ./build
SRC_DIR := ./src

CC := gcc
CFLAGS := -O2

$(BUILD_DIR)/$(BUILD_TARGET): $(BUILD_DIR)/main.o $(BUILD_DIR)/myjoin.o
	$(CC) $^ -o $@

$(BUILD_DIR)/main.o: $(SRC_DIR)/main.c
	@mkdir -p $(dir $@)
	$(CC) -c $(CFLAGS) $^ -o $@

$(BUILD_DIR)/myjoin.o: $(SRC_DIR)/myjoin.c
	@mkdir -p $(dir $@)
	$(CC) -c $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)
