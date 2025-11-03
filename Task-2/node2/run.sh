#!/bin/bash
MUTEX_FLAG=1

python3 ./kv.py \
    --id 2 --tcp 8002 --udp 8102 \
    --peers 192.168.1.11:8001:8101=1,192.168.1.13:8003:8103=3,192.168.1.14:8004:8104=4,192.168.1.15:8005:8105=5 \
    --logger-addr 192.168.1.10:9000 \
    --numnodes 5 --use-mutex $MUTEX_FLAG