#!/usr/bin/env bash

rm -rf /greenlet/build/* /greenlet/dist/*
pip install .
#gdb -ex='set follow-fork-mode child' -ex=run --args uwsgi --http :8000 --wsgi-file /greenlet/repro/crash.py --processes 1 --strict --max-requests 1 --master --lazy-apps
uwsgi --socket /tmp/u --wsgi-file /greenlet/repro/crash.py --processes 1 --strict --max-requests 1 --master --lazy-apps
