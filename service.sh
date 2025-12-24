#!/bin/sh
wait_until_login() {
  until [ "$(getprop sys.boot_completed)" -eq 1 ]; do
    sleep 1
  done

  #test file
  test_file="/storage/emulated/0/.test"
  until touch "$test_file" 2>/dev/null; do
    sleep 1
  done
  rm -f "$test_file"
}

wait_until_login
sleep 15

# Main
rozencharge