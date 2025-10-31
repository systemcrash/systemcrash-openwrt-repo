#!/bin/bash
#
WORKDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$WORKDIR"
# Path within this Repo
SERVER_HOME="$(find * -type d -maxdepth 0 | grep -E "^([0-9\.]+|SNAPSHOT|snapshots)$")"
# grep -E "^((?:openwrt-)?[0-9\.]+|SNAPSHOT|snapshots)$")" would be nice.
# But we get a warning and the openwrt-* folders do not get 'touched' later
# This next step avoids github warning: grep: warning: ? at start of expression
SERVER_HOME="$SERVER_HOME $(find * -type d -maxdepth 0 | grep -E "^(openwrt-[0-9\.]+)$")"
find $SERVER_HOME -type d | sed 's|/$||g' | xargs -I{} touch "{}/index.md"