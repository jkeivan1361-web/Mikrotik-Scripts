# Mikrotik-Scripts
اسکریپت های کاربردی میکروتیک. https://karajshabake.ir
mikrotik-scripts/
│
├── README.md
├── LICENSE
├── CHANGELOG.md
├── CONTRIBUTING.md
│
├── basic/
│   ├── change-identity.rsc
│   ├── configure-dns.rsc
│   ├── configure-ntp.rsc
│   ├── create-bridge.rsc
│   └── secure-services.rsc
│
├── firewall/
│   ├── block-port-scan.rsc
│   ├── brute-force-protection.rsc
│   ├── ddos-protection.rsc
│   ├── syn-flood.rsc
│   └── blacklist-auto.rsc
│
├── hotspot/
│   ├── hotspot-setup.rsc
│   ├── auto-create-user.rsc
│   ├── auto-remove-expired.rsc
│   └── login-limit.rsc
│
├── queue/
│   ├── pcq-equal-bandwidth.rsc
│   ├── queue-tree.rsc
│   ├── burst-limit.rsc
│   └── dynamic-simple-queue.rsc
│
├── routing/
│   ├── failover.rsc
│   ├── pcc-loadbalance.rsc
│   └── recursive-route.rsc
│
├── monitoring/
│   ├── internet-monitor.rsc
│   ├── cpu-monitor.rsc
│   ├── memory-monitor.rsc
│   └── telegram-alert.rsc
│
├── backup/
│   ├── daily-backup.rsc
│   ├── ftp-backup.rsc
│   └── email-backup.rsc
│
└── docs/
    ├── installation.md
    ├── routeros-v6.md
    └── routeros-v7.md