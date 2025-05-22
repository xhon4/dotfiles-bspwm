#!/bin/bash
radeontop -d - -l 1 | grep "gpu" | awk '{print $5}' | sed 's/%,//'