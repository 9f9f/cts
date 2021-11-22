#!/usr/bin/env python3

import socket

hostname = socket.gethostname()
ipaddress = socket.gethostbyname(hostname)

print("Host name is:  ", hostname)
print("IP address is: ", ipaddress)
