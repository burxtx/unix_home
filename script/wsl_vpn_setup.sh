#!/bin/sh

# this script is used to resolve wsl DNS issue behind a VPN. See https://github.com/microsoft/WSL/issues/416
# execute in root
cat > /etc/resolv.conf << 'EOF'
# xiaomi vpn address
nameserver 10.237.25.6
search mioffice.cn
EOF
