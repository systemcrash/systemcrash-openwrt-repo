
[![Build systemcrash OpenWrt Packages repo](https://github.com/systemcrash/systemcrash-openwrt-repo/actions/workflows/openwrt-release.yml/badge.svg?branch=gh-pages)](https://github.com/systemcrash/systemcrash-openwrt-repo/actions/workflows/openwrt-release.yml)


# Use the repo on your OpenWrt device

[systemcrash repo](https://systemcrash.github.io/systemcrash-openwrt-repo/)


## 24.10

#### Either via the GUI

Browse to your version, copy the https link to the .pub key and

System -> Admin -> Repo Public Keys

- Paste the link
- Add Key

System -> Software -> Configure opkg

In `/etc/opkg/customfeeds.conf` paste
```
src/gz systemcrash https://systemcrash.github.io/systemcrash-openwrt-repo/openwrt-24.10/packages/<arch>/systemcrash
```

#### Or from the shell

Modify `<arch>` to your architecture, e.g. `x86_64`
```sh
wget -O /etc/opkg/keys/33ee6f9d97c7a468 https://systemcrash.github.io/systemcrash-openwrt-repo/openwrt-24.10/33ee6f9d97c7a468.pub
echo src/gz systemcrash https://systemcrash.github.io/systemcrash-openwrt-repo/snapshots/packages/<arch>/systemcrash >> /etc/opkg/customfeeds.conf
```


## Snapshot / 25

#### Either via the GUI

Browse to your version, copy the https link to the .pub key and

System -> Admin -> Repo Public Keys

- Paste the link
- Add Key
System -> Software -> Configure apk

In `/etc/apk/repositories.d/customfeeds.list` paste
```
https://systemcrash.github.io/systemcrash-openwrt-repo/snapshots/packages/<arch>/systemcrash/packages.adb
```

#### Or from the shell

Modify `<arch>` to your architecture, e.g. `x86_64`
```sh
wget -O /etc/apk/keys/6d0eb04a45606820.pem https://systemcrash.github.io/systemcrash-openwrt-repo/snapshots/6d0eb04a45606820.pem
echo https://systemcrash.github.io/systemcrash-openwrt-repo/snapshots/packages/<arch>/systemcrash/packages.adb >> /etc/apk/repositories.d/customfeeds.list
```


## Packages
| Package | Description |
| ---- | ---- |
| luci-app-ptp | GUI to configure ptp4l |

