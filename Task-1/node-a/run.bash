#!/bin/bash
python3 peer_node.py \
  --name A --listen 0.0.0.0 5000 \
  --peers A@192.168.1.10:5000 B@192.168.1.11:5001 C@192.168.1.12:5003D@192.168.1.13:5002 \
  --logger 192.168.1.14 9999 \
  --offset-ms 600 \
  --initiate-broadcast --msg "Hello from A"
