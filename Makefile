CC = gcc
C_FLAGS = -Wall -Wextra -Werror -Wpedantic -Wshadow
RELEASE_FLAGS ?= -Wall -Wextra -Ofast -ffast-math -finline-functions -funroll-loops -fomit-frame-pointer -DNDEBUG
C_DBG = -Wall -Werror -g3 -DDEBUG

NAME = project
NAME_TEST = $(NAME)-test
NAME_RELEASE = $(NAME)-release

SOURCE = src
TARGET = target
RELEASE_DIR = $(TARGET)/release
TEST_DIR = $(TARGET)/test
BUILD_DIR = $(TARGET)/build

CFILES = $(shell find $(SOURCE) -type f -name '*.c')
OFILES = $(patsubst $(SOURCE)/%.c, $(TARGET)/%.o, $(CFILES))

.PHONY: all test release clean

all: $(BUILD_DIR)/$(NAME).out

test: $(TEST_DIR)/$(NAME_TEST).out

release: $(RELEASE_DIR)/$(NAME_RELEASE).out

init:
	mkdir -p $(SOURCE)
	echo '#include <stdio.h>\n\nint main() {\n    printf("Hello, world!\\n");\n    return 0;\n}' > $(SOURCE)/main.c


$(TEST_DIR)/$(NAME_TEST).out: $(OFILES)
	$(CC) $(C_FLAGS) $(C_DBG) $^ -o $@

$(RELEASE_DIR)/$(NAME_RELEASE).out: $(OFILES)
	$(CC) $(C_FLAGS) $(RELEASE_FLAGS) $^ -o $@

$(TARGET)/%.o: $(SOURCE)/%.c
	@mkdir -p $(@D)
	$(CC) $(C_FLAGS) -c $< -o $@

$(BUILD_DIR)/$(NAME).out: $(OFILES)
	mkdir -p $(@D)
	$(CC) $(C_FLAGS) $^ -o $@

clean:
	rm -rf $(TARGET)
