#!/usr/bin/env bash
echo "Hello from backend!"

# Execute the project
cd ../../shared
export PORT=4001
.vuego-demoapp &
