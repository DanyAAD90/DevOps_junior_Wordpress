Project display website www. Workflow shows:

```mermaid
graph LR
A[Linux MINT 21.1] --> B(Virtualbox 6.1)
B --> C(Ubuntu23.04)
C --> D(Proxmox)
D --> E(Wordpress)
```
Configuration on main host:\
`inet 192.168.0.47/24 brd 192.168.0.255 scope global dynamic noprefixroute enp3s0`

