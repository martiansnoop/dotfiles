if window.get_active_class() in ['gnome-terminal-server.Gnome-terminal']:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+<shift>+c")
elif window.get_active_class() in ['Alacritty.Alacritty']:
    pass
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+c")
