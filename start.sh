#!/bin/bash
# script for starting the main server
# PRIVATE=true

# color helper (optional)
NC='\033[0m'
BOLD='\033[1m'

# foreground
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'

xfind() {
    local pattern="$1"
    local found_msg="$2"
    local found_level="$3"
    local missing_msg="$4"
    local missing_level="$5"

    local found=0
    local line

    while IFS= read -r line; do
        if [[ "$line" =~ $pattern ]]; then
            if (( found == 0 )); then
                xprint "$found_level" "$found_msg"
                found=1
            fi
        fi
    done

    if (( found == 0 )); then
        xprint "$missing_level" "$missing_msg"
    fi
}

xexec() {
  # 1gb heap with 4gb max heap
    java \
        -Xms1G \
        -Xmx4G \
        -XX:+UseG1GC \
        -XX:MaxGCPauseMillis=200 \
        -jar fabric-jre-server_26.3.jar nogui 2>&1 |
        tee -a logs/console.log
}

xlisten() {
  if [[ "$line" =~ main/WARN ]]; then
        xprint "*" "some warnings were found, but you may disregard them unless stated otherwise."
    fi

        if [[ "$line" =~ STDERR ]]; then
        xprint "!" "a minor issue was encountered."
    fi

    shopt -s nocasematch

    if [[ "$line" =~ loaded && ! "$line" =~ fabric ]]; then
        xprint "$" "something, like a mod or dependency has been loaded!"
    fi

    if [[ "$line" =~ recommends ]]; then
        xprint "@" "a mod recommendation was detected, but you may disregard this message. (for example, modmenu)"
    fi

        shopt -s nocasematch

      if [[ "$line" =~ "for help" ]]; then
        xprint "$" "the server has started! connect using your desired ip."
    fi

          if [[ "$line" =~ "dev version" ]]; then
        xprint "$" "please ignore this 'dev version' warning!"
    fi
}

xprint() {
    local level="$1"
    local msg="$2"
    local color=""

    case "$level" in
        "$") color="$GREEN" ;;
        "?")    color="$BLUE" ;;
        "*")    color="$YELLOW" ;;
        "!")   color="$RED" ;;
        "@")   color="$PURPLE" ;;
        *)         color="$NC" ;;
    esac

    printf "<${color}%s${NC}> %-7s %s\n" "$level" "$msg"
}

# execution

cd "$(dirname "$0")"
clear

if [ -n "$PRIVATE" ]; then
  xprint "!" "development enviornment is set as public. script will poop itself. to change this, modify start.sh and delete or comment out PRIVATE."
  exit 0
fi

mkdir -p logs
touch logs/console.log

xprint "$" "startup helper opened."
xprint "?" "initializing the server..."

xexec 2>&1 | while IFS= read -r line; do
    printf '%s\n' "$line"
    shopt -s nocasematch
    xlisten
done