sudo -s
grubby --update-kernel=ALL --args="console=ttyS0"
shutdown -r now