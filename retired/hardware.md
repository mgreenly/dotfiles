# Hardware Notes

Some notes specific to my hardware.

## Dell E6520 Notes

```
sudo vim /etc/default/grub
GRUB_CMDLINE_LINUX="reboot=pci quiet"
sudo update-grub
sudo apt-get install firmware-iwlwifi
```
