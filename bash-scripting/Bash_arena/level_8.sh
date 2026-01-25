#!/bin/bash

SEARCH_TERM="$1"

grep -l "$1" *.log
