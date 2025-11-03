#!/bin/bash

NODES="192.168.1.11:8001,192.168.1.12:8002,192.168.1.13:8003,192.168.1.14:8004,192.168.1.15:8005"

echo "--- Menjalankan RACE (blue vs red) ---"
python3 ./kvclient.py --nodes $NODES race "PUT color blue" "PUT color red"

echo "--- Menunggu replikasi... (5 detik) ---"
sleep 5

echo "--- Memeriksa hasil di SEMUA node ---"
python3 ./kvclient.py --nodes $NODES getall color