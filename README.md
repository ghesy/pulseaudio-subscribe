# pulseaudio-subscribe

simple program that subscribes to pulseaudio events
and outputs the current volume percentage upon any
change.

this is useful for updating statusbar modules;
stuff like dwmblocks and dwmBar.

## install

arch users can use the AUR package: `paru -S pulseaudio-subscribe-git`

install: `make; sudo make install`

uninstall: `sudo make uninstall`

## example usage

this command shows a desktop notification upon
change of pulseaudio's state (change of volume, default sink, etc.):

```sh
pulseaudio-subscribe | xargs -L1 notify-send
```
