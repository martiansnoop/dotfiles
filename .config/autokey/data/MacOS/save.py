import platform
# forward the original keys if we're in the terminal
if window.get_active_class() in ['Alacritty.Alacritty', 'gnome-terminal-server.Gnome-terminal']:
    os, version, codename = platform.linux_distribution()
    if os == 'Ubuntu':
        # for some reason, need to passthrough manually here
        # but on other linuxes, this sends a double key
        keyboard.send_keys("<super>+s");
    else:
        pass
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+s")
