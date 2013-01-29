

PROG=raspberrytelescope

LUA=lua-5.2.1/src
CC=gcc
CFLAGS=-Wall -g -rdynamic
LDFLAGS=-ldl -pthread -lgphoto2 -I$(LUA) -L$(LUA) -llua -lm
MONGOOSE_BUILD_OPTS=-DUSE_LUA

all: raspberrytelescope

raspberrytelescope:
	$(CC) stringutils.c telescopecamera.c mongoose.c webserver.c   $(CFLAGS) $(LDFLAGS) $(MONGOOSE_BUILD_OPTS) -o $(PROG)

clean:
	rm -f *.o $(PROG)

	
