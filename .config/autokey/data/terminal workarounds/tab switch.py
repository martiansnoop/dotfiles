if window.get_active_class() in ['gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<ctrl>+b")
    keyboard.send_keys("n")
else:
    keyboard.send_keys("<ctrl>+<tab>")