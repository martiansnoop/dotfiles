# forward the original keys if we're in the terminal
if window.get_active_class() in ['Alacritty.Alacritty', 'gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<super>+s")
else:
    keyboard.send_keys("<ctrl>+s")
