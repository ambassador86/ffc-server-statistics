#!/bin/bash
vnstat -u
source stats.conf
for interface in $interfaces; do
for output in $outputs; do
  vnstati -${output} -i ${interface} -o ${wwwroot}/${interface}_${output}.png
done
done