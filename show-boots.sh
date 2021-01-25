#!/bin/bash
offset="${1:-0}"
os=$(uname -s)

if [ "$os" = "Darwin" ] 
   then date_obj=$(date -v-"${offset}"d)
   else date_obj=$(date -d "${offset} days ago")
fi

read -ra arr <<< "$date_obj"
date_part="${arr[0]} ${arr[1]} ${arr[2]}"

# ---- Function ----
Extract () {
   ext_res=$($1 | tr -s ' ' | grep -o "${date_part} [[:digit:]][[:digit:]]:[[:digit:]][[:digit:]]")
}

# --- Extraction logic ----

Extract "last reboot"
last_reboots=$ext_res
Extract "last shutdown"
last_shutdowns=$ext_res


# ---- OUTPUT ----

echo "${date_part}"
echo "---------"
echo "Boots"
echo "${last_reboots}"
echo "---------"
echo "Shutdowns"
echo "${last_shutdowns}"
echo "---------"
