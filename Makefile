.PHONY: all client server
CC=gcc
CC_FLAGS= -static

all: client.c server.c
	$(CC) $(CC_FLAGS) -o client client.c
	$(CC) $(CC_FLAGS) -o server server.c -lpthread
clean:
	rm -rf client server
