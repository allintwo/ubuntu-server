
cd /etc/netplan/
sudo nano /etc/netplan/50-cloud-init.yaml

network:
    version: 2
    ethernets:
        eth0:
            dhcp4: true
            dhcp4-overrides:
                route-metric: 100
            dhcp6: false
            match:
                driver: hv_netvsc
                macaddress: 60:45:bd:20:8c:7d
            set-name: eth0
            addresses:
                - 10.1.0.5/24
            routes:
                - to: 0.0.0.0/0
                  via: 10.1.0.1
                  metric: 100
            nameservers:
                addresses:
                    - 8.8.8.8
                    - 8.8.4.4


sudo netplan apply
