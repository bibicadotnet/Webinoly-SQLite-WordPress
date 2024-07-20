# Webinoly-SQLite-WordPress
Sử dụng phiên bản Webinoly v1.18.4 và bản WordPress từ [Docker SQLite WordPress](https://github.com/soulteary/docker-sqlite-wordpress)
1. Login root
2. Update IOS and reboot the system
```shell
sudo apt update && sudo apt upgrade -y && sudo reboot
```
3. Install Webinoly PHP 7.4
```shell
sudo wget --no-check-certificate https://raw.githubusercontent.com/bibicadotnet/Webinoly-SQLite-WordPress/main/setup/webinoly74.sh -O /opt/webinoly_mod.sh && sudo chmod +x /opt/webinoly_mod.sh && sudo /opt/webinoly_mod.sh
```



