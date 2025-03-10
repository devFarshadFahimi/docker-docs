#!/bin/bash

echo "Waiting for MongoDB to start..."
IS_INITIATED=$(mongosh --quiet --eval "rs.status().ok" || echo "0")

if [ "$IS_INITIATED" == "1" ]; then
  echo "Replica Set already initiated."
else
  echo "Initiating Replica Set..."
  mongosh --eval "
  rs.initiate({
    _id: 'myReplicaSet',
    members: [
      { _id: 0, host: 'mongo1', priority: 2 },
      { _id: 1, host: 'mongo2', priority: 1 },
      { _id: 2, host: 'mongo3', priority: 1 }
    ]
  })
  "
fi
echo "Replica set initialized successfully!"

# جلوگیری از توقف کانتینر
tail -f /dev/null

