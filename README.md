## Super simple Plex auto-update script for Linux
Hard-coded for Debian/Ubuntu. Can be easily adapted for Fedora if that is what floats your boat. 

## Requirements
`apt-get install jq curl`

## Usage:
```
root@nas:~# ./update_plex.sh 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 83.1M  100 83.1M    0     0  38.8M      0  0:00:02  0:00:02 --:--:-- 38.8M
(Reading database ... 142556 files and directories currently installed.)
Preparing to unpack plexmediaserver_1.18.3.2156-349e9837e_amd64.deb ...
Removed /etc/systemd/system/multi-user.target.wants/plexmediaserver.service.
Unpacking plexmediaserver (1.18.3.2156-349e9837e) over (1.18.2.2058-e67a4e892) ...
Setting up plexmediaserver (1.18.3.2156-349e9837e) ...
Created symlink /etc/systemd/system/multi-user.target.wants/plexmediaserver.service → /lib/systemd/system/plexmediaserver.service.
Processing triggers for libc-bin (2.28-10) ...
Processing triggers for mime-support (3.62) ...
```
