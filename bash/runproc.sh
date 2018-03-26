#!/bin/bash

PIDS=$(ps aux | awk 'FNR > 1 { if ($2 >= 1024) print $2}')

for pid in $PIDS; do
  bin_path=$(readlink -f /proc/$pid/exe)
  echo "PID: $pid PATH: $bin_path"
done

# for project in infra/projects/*; do
#   cd $project
#   if [ -f "build.sh" ]; then
#     ./build.sh
#   fi
#   cd $BASEDIR
# done