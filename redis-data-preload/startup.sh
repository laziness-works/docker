#!/bin/bash
set -m

redis-server &
sleep 3             

redis-cli set test-data test-value

fg %1
