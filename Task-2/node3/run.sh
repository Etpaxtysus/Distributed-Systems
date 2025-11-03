#!/bin[bash
MUTEX_FLAG=1

python3 ./kv.py \
    --id 3 --tcp 8003 --udp 8103 \
    --peers 192.168.1.11:8001:8101=1,192.168.1.12:8002:8102=2,192.168.1.14:8004:8104=4,192.168.1.15:8005:8105=5 \
    --logger-addr 192.168.1.10:9000 \
    --numnodes 5 --use-mutex $MUTEX_FLAG