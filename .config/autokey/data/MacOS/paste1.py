if window.get_active_class() in ['Alacritty.Alacritty', 'gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<ctrl>+<shift>+v")		
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+v")

