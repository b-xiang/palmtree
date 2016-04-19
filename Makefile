CFLAGS=-Werror -Wall -std=c++11
LDFLAGS=-lboost_atomic-mt -lboost_system-mt -lboost_thread-mt
CC=g++

all: palmtree_test

palmtree_test: main.cpp palmtree.h
	$(CC) $(CFLAGS) -o palmtree_test main.cpp $(LDFLAGS)

clean:
	rm -rf palmtree_test *.o