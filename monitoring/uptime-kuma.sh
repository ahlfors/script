#!/bin/bash

result=$(curl --fail --no-progress-meter --retry 3 "http://status.apecloud.com:3001/api/push/${1}?status=up&msg=OK&ping=" 2>&1)
if [ $? -ne 0 ]; then
    echo "Failed: $result" >&2
fi
