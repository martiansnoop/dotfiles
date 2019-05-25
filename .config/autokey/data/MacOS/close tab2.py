if window.get_active_class() != 'Alacritty.Alacritty' and window.get_active_class() != 'gnome-terminal-server.Gnome-terminal':
    keyboard.send_keys("<ctrl>+w")
if window.get_active_class() == 'gnome-terminal-server.Gnome-terminal':
    keyboard.send_keys("<ctrl>+b")
    keyboard.send_keys("x")