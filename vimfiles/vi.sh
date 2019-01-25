#!/bin/sh
#nvim -n "$@"
vim -g -n -f "$@" > /dev/null 2>&1
