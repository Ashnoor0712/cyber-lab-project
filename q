[0;1;32m●[0m systemd-resolved.service - Network Name Resolution
     Loaded: loaded (]8;;file://ashnoor-jattana-VirtualBox/usr/lib/systemd/system/systemd-resolved.service/usr/lib/systemd/system/systemd-resolved.service]8;;; [0;1;32menabled[0m; preset: [0;1;32menabled[0m)
     Active: [0;1;32mactive (running)[0m since Wed 2026-04-01 20:42:31 PDT; 5h 14min ago
       Docs: ]8;;man:systemd-resolved.service(8)man:systemd-resolved.service(8)]8;;
             ]8;;man:org.freedesktop.resolve1(5)man:org.freedesktop.resolve1(5)]8;;
             ]8;;https://www.freedesktop.org/wiki/Software/systemd/writing-network-configuration-managershttps://www.freedesktop.org/wiki/Software/systemd/writing-network-configuration-managers]8;;
             ]8;;https://www.freedesktop.org/wiki/Software/systemd/writing-resolver-clientshttps://www.freedesktop.org/wiki/Software/systemd/writing-resolver-clients]8;;
   Main PID: 413 (systemd-resolve)
     Status: "[0;1;36mProcessing requests...[0m"
      Tasks: 1 (limit: 4597)
     Memory: 6.1M (peak: 6.6M)
        CPU: 853ms
     CGroup: /system.slice/systemd-resolved.service
             └─[0;38;5;245m413 /usr/lib/systemd/systemd-resolved[0m

Apr 01 20:42:31 ashnoor-jattana-VirtualBox systemd-resolved[413]: Using system hostname 'ashnoor-jattana-VirtualBox'.
Apr 01 20:42:31 ashnoor-jattana-VirtualBox systemd[1]: Started systemd-resolved.service - Network Name Resolution.
Apr 01 20:42:37 ashnoor-jattana-VirtualBox systemd-resolved[413]: enp0s3: Bus client set default route setting: yes
Apr 01 20:42:37 ashnoor-jattana-VirtualBox systemd-resolved[413]: enp0s3: Bus client set DNS server list to: 75.75.75.75, 75.75.76.76
Apr 01 21:47:39 ashnoor-jattana-VirtualBox systemd-resolved[413]: [0;1;38;5;185m[0;1;39m[0;1;38;5;185mUsing degraded feature set UDP instead of UDP+EDNS0 for DNS server 75.75.76.76.[0m
Apr 01 21:47:39 ashnoor-jattana-VirtualBox systemd-resolved[413]: [0;1;38;5;185m[0;1;39m[0;1;38;5;185mUsing degraded feature set TCP instead of UDP for DNS server 75.75.76.76.[0m
Apr 01 21:47:41 ashnoor-jattana-VirtualBox systemd-resolved[413]: [0;1;38;5;185m[0;1;39m[0;1;38;5;185mUsing degraded feature set UDP instead of TCP for DNS server 75.75.76.76.[0m
Apr 01 21:47:42 ashnoor-jattana-VirtualBox systemd-resolved[413]: [0;1;38;5;185m[0;1;39m[0;1;38;5;185mUsing degraded feature set TCP instead of UDP for DNS server 75.75.76.76.[0m
Apr 01 21:47:42 ashnoor-jattana-VirtualBox systemd-resolved[413]: [0;1;38;5;185m[0;1;39m[0;1;38;5;185mUsing degraded feature set UDP instead of TCP for DNS server 75.75.76.76.[0m
Apr 02 00:43:25 ashnoor-jattana-VirtualBox systemd-resolved[413]: Grace period over, resuming full feature set (UDP+EDNS0) for DNS server 75.75.76.76.
