#!/bin/sh
bin=pulseaudio-subscribe
g++ $(pkg-config libpulse --cflags --libs) $bin.cpp -o $bin
sudo cp -fv ./$bin /usr/local/bin/
sudo chmod a+x /usr/local/bin/$bin
rm ./$bin
echo $bin Successfully Installed.
