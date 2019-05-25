if window.get_active_class() == 'gnome-terminal-server.Gnome-terminal':
    keyboard.send_keys("<ctrl>+b")
    keyboard.send_keys("p")
else:
    keyboard.send_keys("<ctrl>+<shift>+<tab>")