#!/bin/sh
echo "Entrypoint Started"

sh /go/src/github.com/imunizeme/prest.core/tcp-port-wait.sh $IMUNIZEME_PG_HOST $IMUNIZEME_PG_PORT

go run main.go migrate up;

echo "Entrypoint End"
exec $@