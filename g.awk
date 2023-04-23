#!/usr/bin/awk -f
NR==1 {print "./"}
{print $0}
