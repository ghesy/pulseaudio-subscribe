# pulseaudio-subscribe

simple program that subscribes to pulseaudio events
and outputs the current volume percentage upon any
change.

this is useful for updating statusbar modules;
stuff like dwmblocks and dwmBar.

## install

install: `./install.sh`.
remove: `sudo rm /usr/local/bin/xkblayout-subscribe`.

## example usage

this command shows a desktop notification upon any
change to pulseaudio's state:

```sh
pulseaudio-subscribe | xargs -L1 notify-send
```
