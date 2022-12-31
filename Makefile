CC ?= gcc # or whatever compiler you want to use

PROJECT_OBJ ?= main.o file.o

# Flags
CFLAGS ?= -Wall -Wextra
RElEASE_FLAGS ?= -Wall -Wextra -Ofast -ffast-math -finline-functions 

# Debug
DEBUG ?= -g -DDEBUG

.SUFFIXES: .c .o

PROJECT = project
RLS_PROJECT = release_project

all: $(PROJECT)


$(PROJECT): $(PROJECT_OBJ)
	$(CC) $(DEBUG) $(CFLAGS) -o $(PROJECT).out $(PROJECT_OBJS)

release: $(RLS_PROJECT)

$(RLS_PROJECT): $(PROJECT_OBJS)
	$(CC) $(RElEASE_FLAGS) -o $(RLS_PROJECT).out $(PROJECT_OBJS)


.c.o: 
	$(CC) $(DEBUG) $(CFLAGS) -c $*.c

clean: 
	rm -rf *.o *.out *.txt