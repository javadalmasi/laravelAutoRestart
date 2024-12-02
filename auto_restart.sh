#!/bin/bash
while true
do
    if ! lsof -i:8000 > /dev/null; then
        echo "Server is down. Starting server..."
        php artisan serve &
    else
        echo "Server is running."
    fi
    sleep 3
done
