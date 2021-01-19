#!/bin/sh

date_res=$(date)
arr=($date_res)
date_part="${arr[0]} ${arr[1]} ${arr[2]}"

# ---- Function ----
Extract () {
   ext_res=$($1 | grep -o "${date_part} \d\d:\d\d")
}

# --- Extraction logic ----

Extract "last reboot"
last_reboots=$ext_res
Extract "last shutdown"
last_shutdowns=$ext_res


# ---- OUTPUT ----

echo "---------"
echo "Boots"
echo "${last_reboots}"
echo "---------"
echo "Shutdowns"
echo "${last_shutdowns}"
echo "---------"
