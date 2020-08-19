#! /bin/bash

if [ "$1" == "--list" ]; then
cat<<EOF
{
  "webservers": {
    "hosts": [
      "34.73.22.127"
    ],
    "vars": {
      "host_test": "test-value"
    }
  },
  "appservers": {
    "hosts": [
      "10.128.0.6"
    ],
    "vars": {
      "host_test": "test-value"
    }
  },
  "_meta": {
    "hostvars": {
      "myhost.domain.com": {
        "host_specific_test_var": "test-value"
      }
    }
  }
}
EOF
elif [ "$1" == "--host" ]; then
  echo '{"_meta": {hostvars": {}}}'
else
  echo "{ }"
fi
