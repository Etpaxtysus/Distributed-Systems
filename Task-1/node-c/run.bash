#!/bin/bash
python3 peer_node.py \
  --name C --listen 0.0.0.0 5003 \
  --peers A@192.168.1.10:5000 B@192.168.1.11:5001 C@192.168.1.12:5003 D@192.168.1.13:5002 \
  --logger 192.168.1.14 9999 \
  --offset-ms 200 
