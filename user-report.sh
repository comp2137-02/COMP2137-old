#!/bin/bash

ps --no-headers -eo user | sort | uniq -c
