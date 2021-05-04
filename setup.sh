#/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

for i in $SCRIPT_DIR/*; do
  if [[ ${i##*/} != "LICENSE" && ${i##*/} != ${0##*/} ]]; then
    ln -sf $i ~/.${i##*/}
  fi
done

