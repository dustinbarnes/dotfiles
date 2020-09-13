# Some scripts aren't awesome and use this, which Bash then loads instead of .profile
# This will force it to load .profile first, then continue
[[ -s "~/.profile" ]] && source "~/.profile"
