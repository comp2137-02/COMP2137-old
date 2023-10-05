#!//bin/bash

# gather data for our report
myuser=$USER
mydate=$(date +%A)
myhost=$(hostname)
# get all ip addresses for ipv4 using ip a command
# really should use a better way of doing this
myip=$(ip a | grep -w inet| awk '{print $2}')

# Output generation using template
cat <<EOF

Report by $mydate
---------------

Today: $mydate
Host: $myhost
IPs: $myip

---------------

EOF

