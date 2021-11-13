#!/bin/bash
set -m

redis-server &
sleep 3             

redis-cli set test-data test-value
redis-cli < ./preload-data/example.txt

fg %1
