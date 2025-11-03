#!/bin/bash
MUTEX_FLAG=1

python3 ./kv.py \
    --id 5 --tcp 8005 --udp 8105 \
    --peers 192.168.1.11:8001:8101=1,192.168.1.12:8002:8102=2,192.168.1.13:8003:8103=3,192.168.1.14:8004:8104=4 \
    --logger-addr 192.168.1.10:9000 \
    --numnodes 5 --use-mutex $MUTEX_FLAG