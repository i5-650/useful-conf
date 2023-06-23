CC = gcc
C_FLAGS = -Wall -Wextra -Werror
RElEASE_FLAGS ?= -Wall -Wextra -Ofast -ffast-math -finline-functions -funroll-loops -fomit-frame-pointer -DNDEBUG
C_DBG = -g3 -DDEBUG

NAME = project
NAME_TEST = $(NAME)-test
NAME_RELEASE = $(NAME)-release

SOURCE = src
TARGET = target

CFILES = $(shell find $(SOURCE) -type f -name '*.c')
OFILES = $(patsubst $(SOURCE)/%.c, $(TARGET)/%.o, $(CFILES))

.PHONY: all clean

all: $(NAME).out

test: $(NAME_TEST).out

release: $(NAME_RELEASE).out

$(NAME_TEST).out: $(OFILES)
	$(CC) $(C_FLAGS) $(C_DBG) $^ -o $@

$(NAME_RELEASE).out: $(OFILES)
	$(CC) $(C_FLAGS) $(RElEASE_FLAGS) $^ -o $@

$(TARGET)/%.o: $(SOURCE)/%.c
	@mkdir -p $(@D)
	$(CC) $(C_FLAGS) -c $< -o $@

$(NAME).out: $(OFILES)
	$(CC) $(C_FLAGS) $^ -o $@

clean:
	rm -rf $(TARGET)/*
	rm -f $(NAME).out