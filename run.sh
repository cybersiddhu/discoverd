#!/bin/sh

if [ ${ETCD_PORT_4001_TCP_ADDR+defined} ]; then
    /bin/discoverd -etcd "http://${ETCD_PORT_4001_TCP_ADDR}:${ETCD_PORT_4001_TCP_PORT}"
else
    /bin/discoverd
fi

