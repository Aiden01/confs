#!/bin/sh
DIR="$(todays_work.sh)"
ENC_DIR="$HOME/work/work.gocryptfs/"

if [ -d "$DIR" ]; then
  echo "$DIR" does not exist, attempting to mount "$ENC_DIR"
  echo gocryptfs_mount.sh "$ENC_DIR"
  gocryptfs_mount.sh "$ENC_DIR"
fi

exec nvim "$DIR/log.org"
