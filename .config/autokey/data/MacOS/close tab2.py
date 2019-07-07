if window.get_active_class() in ['gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<ctrl>+b")
    keyboard.send_keys("x")
elif window.get_active_class() in ['code.Code', 'Alacritty.Alacritty']:
    keyboard.send_keys("<super>+w")
else:
    keyboard.send_keys("<ctrl>+w")
