# connect to vpn

## ubuntu
```shell
sudo apt-get update
sudo apt-get install lib32z1 lib32ncurses5
sudo chmod +x vpnsetup.sh
./vpnsetup.sh
sudo apt-get install network-manager-openconnect
service vpnagentd stop （ubuntu14.04 用）
service vpnagentd start （ubuntu14.04 用）
sudo systemctl daemon-reload（ubuntu16.04 用）
sudo systemctl restart vpnagentd（ubuntu16.04 用）
ps auxw | grep vpnagentd | grep -v grep
gedit ~/.bashrc
alias vpn='/opt/cisco/anyconnect/bin/vpn'
alias vpnui='/opt/cisco/anyconnect/bin/vpnui'
source ~/.bashrc
#命令行
vpn
connect v.mioffice.cn
```
