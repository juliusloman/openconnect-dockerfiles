#!/bin/bash

if [ -n $PASSWORD ];
then
	echo $PASSWORD | openconnect --passwd-on-stdin $@
else 
	openconnect $@
fi
