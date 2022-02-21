#!/bin/sh

is_debug_mode=$DEBUG

if [ "$is_debug_mode" == true ] ; then
  rm /aravica/tmp/pids/server.pid
  bundle exec rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- bin/rails s -p 3000 -b 0.0.0.0
else
  rm /aravica/tmp/pids/server.pid
  bundle exec rails s -p 3000 -b 0.0.0.0
fi

