PREFIX ?= /usr/local

BIN = pulseaudio-subscribe
SRC = pulseaudio-subscribe.cpp

.PHONY: all install clean
.POSIX:

all : $(NAME)

install : $(BIN)
	cp -fv $(BIN) $(PREFIX)/bin/$(BIN)
	chmod a+x $(PREFIX)/bin/$(BIN)

clean :
	rm -fv $(BIN)

$(BIN) : $(SRC)
	g++ $(shell pkg-config libpulse --cflags --libs) $(SRC) -o $(BIN)
