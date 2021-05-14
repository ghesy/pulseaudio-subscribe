PREFIX ?= /usr/local

BIN = pulseaudio-subscribe
SRC = pulseaudio-subscribe.cpp

.PHONY: all install clean
.POSIX:

all : $(BIN)

install : $(BIN)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f $(BIN) $(DESTDIR)$(PREFIX)/bin/$(BIN)
	chmod 755 $(DESTDIR)$(PREFIX)/bin/$(BIN)

clean :
	rm -f $(BIN)

$(BIN) : $(SRC)
	g++ $(shell pkg-config libpulse --cflags --libs) $(SRC) -o $(BIN)
