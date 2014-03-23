#!/bin/sh
if [ ${1+defined} ]; then
    /bin/discoverd -etcd "http://${1}"
elif [ ${ETCD_PORT_5001_TCP_ADDR+defined} ]; then
    /bin/discoverd -etcd "http://${ETCD_PORT_5001_TCP_ADDR}:${ETCD_PORT_5001_TCP_PORT}"
elif [ ${ETCD_PORT_4001_TCP_ADDR+defined} ]; then
    /bin/discoverd -etcd "http://${ETCD_PORT_4001_TCP_ADDR}:${ETCD_PORT_4001_TCP_PORT}"
else
    /bin/discoverd
fi

