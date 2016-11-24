# Docker image for running openconnect

This image is for running Openconnect VPNs in containers. For simple VPN setup:


	docker run -ti --privileged --network=host lomo/openconnect <OPENCONNECT_ARGS>


Replace <OPENCONNECT_ARGS> with your openconnect options. To pass password
automatically, set your password to environment variable PASSWORD and option
--passwd-on-stdin is added automatically. for example:

	docker run -ti --privileged --network=host -e PASSWORD=mypassword lomo/openconnect <OPENCONNECT_ARGS>


For running with docker-compose:


	version: '2'

	services:
	  myvpn:
	    image: lomo/openconnect
	    privileged: true
	    network_mode: host
	    environment:
	    - PASSWORD=<PASSWORD>
	    command:  -u <USER> <IP>




