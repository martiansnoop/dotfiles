if window.get_active_class() in ['Alacritty.Alacritty', 'gnome-terminal-server.Gnome-terminal']:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+<shift>+c")
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+c")
