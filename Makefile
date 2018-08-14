ESLPATH = /usr/local/src/freeswitch/libs/esl

CFLAGS = -I$(ESLPATH)/src/include

all: myesl.c $(ESLPATH)/.libs/libesl.a
	gcc -pthread $(CFLAGS) -o myesl myesl.c $(ESLPATH)/.libs/libesl.a -lm
