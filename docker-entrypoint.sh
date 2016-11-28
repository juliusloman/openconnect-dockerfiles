#!/bin/bash

if [ -n $PASSWORD ];
then
	echo $PASSWORD | openconnect --passwd-on-stdin $@
else 
	ip r s |sort >/tmp/route.default
	openconnect --script=/network-routes.sh $@
fi
