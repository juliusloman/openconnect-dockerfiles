#!/bin/bash

ip r s |sort >/tmp/routes.vpn
comm -13 /tmp/routes.default /tmp/routes.vpn >/tmp/routes
