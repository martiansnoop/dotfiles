# forward the original keys if we're in the terminal
if window.get_active_class() in ['Alacritty.Alacritty', 'gnome-terminal-server.Gnome-terminal']:
    pass
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+s")
