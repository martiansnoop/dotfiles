if window.get_active_class() in ['gnome-terminal-server.Gnome-terminal']:
    keyboard.send_keys("<ctrl>+<shift>+v")
elif window.get_active_class() in ['Alacritty.Alacritty']:
    pass
else:
    time.sleep(.1)
    keyboard.send_keys("<ctrl>+v")

