PLAT ?= linux
SHARED := -fPIC --shared
CFLAGS = -g -O2 -Wall

all: random

random : lua-random.c
	$(CC) $(CFLAGS) $(SHARED) $^ -o random.so

clean:
	rm *.so