#!/bin/sh
echo "Entrypoint Started"
sleep 10
go run main.go migrate up

echo "Entrypoint End"
exec $@