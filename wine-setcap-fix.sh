#!/usr/bin/env sh

# This script applies some setcap permissions to wine to allow ACT for FFXIV to work

echo "Applying setcap for wine, wine64 and wineserver"

sudo setcap cap_net_raw,cap_net_admin,cap_sys_ptrace=eip "$(which wine)"
sudo setcap cap_net_raw,cap_net_admin,cap_sys_ptrace=eip "$(which wine64)"
sudo setcap cap_net_raw,cap_net_admin,cap_sys_ptrace=eip "$(which wineserver)"

echo "Done"
