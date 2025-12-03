#!/bin/bash

/updater.sh &

exec gosu worker "$@"