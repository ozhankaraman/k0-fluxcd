#!/bin/sh

SITE=https://python-helloworld-prod.k.zebrastack.com/

while true; do
    rval=`curl -s -o /tmp/curl$$ -w "%{http_code}" $SITE`
    if test $rval = "200"; then
        cat /tmp/curl$$ | grep VERSION | sed -e 's/<br>//g'
        rm -f /tmp/curl$$
    else
        echo "ERROR: $rval status code received from http server"
    fi
    kubectl get canary|grep -v NAME
    sleep 0.005
    if test `kubectl get canary | grep -c "Succeeded"` -eq 1 -o `kubectl get canary | grep -c "Failed"` -eq 1; then
        break
    fi
done
