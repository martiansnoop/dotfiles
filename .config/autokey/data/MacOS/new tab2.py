import platform

if window.get_active_class() in ['gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<ctrl>+b")
    keyboard.send_keys("c")
elif window.get_active_class() in ['Alacritty.Alacritty']:
    os, version, codename = platform.linux_distribution()
    if os == 'Ubuntu':
        # for some reason, need to passthrough manually here
        # but on other linuxes, this sends a double key
        keyboard.send_keys("<super>+t");
    else:
        pass
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+t")
