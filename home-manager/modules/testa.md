1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 0c:84:dc:cb:f4:53 brd ff:ff:ff:ff:ff:ff
3: enp0s25: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether d4:c9:ef:53:9a:b7 brd ff:ff:ff:ff:ff:ff
    altname enxd4c9ef539ab7
    inet 192.168.100.167/24 brd 192.168.100.255 scope global dynamic noprefixroute enp0s25
       valid_lft 77031sec preferred_lft 77031sec
    inet6 fe80::df7d:8964:e7cc:14ce/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
