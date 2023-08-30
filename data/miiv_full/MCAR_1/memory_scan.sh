#!/bin/bash

SIZE=$(du -sh . | cut -f1)
DATE=$(date +"%Y/%m/%d")
echo "$DATE: $SIZE GB" >> README_memory_occupied.md
