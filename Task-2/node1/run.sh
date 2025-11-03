#!/bin/bash
# --use-mutex 0 (untuk skenario 1) atau 1 (untuk skenario 2)
MUTEX_FLAG=1 

python3 ./kv.py \
    --id 1 --tcp 8001 --udp 8101 \
    --peers 192.168.1.12:8002:8102=2,192.168.1.13:8003:8103=3,192.168.1.14:8004:8104=4,192.168.1.15:8005:8105=5 \
    --logger-addr 192.168.1.10:9000 \
    --numnodes 5 --use-mutex $MUTEX_FLAG