#!/bin/sh
echo "Running server and statring onion service..."
python3 -m http.server --directory /tmp/website/ &
tor -f /tmp/torrc
