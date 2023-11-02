#!/bin/bash

read -p "Enter a number from 3 to 20 for how many sides the dice should have: " numsides

echo "Rolling dice... $(( RANDOM % numsides + 1 )) $(( RANDOM % numsides + 1 ))"
