# fr24feeder

Flightradar 24 feeder in a docker container. Nothing more. 

Requires the config file be provided via host mount or docker volumn or kubernetes configmap `/etc/fr24feed.ini`

## Why

There are numerous fr24 docker images, but I failed to find one that didn't already have dump1090 installed as well as other adsb feeders added, or that required building in your ini file. I needed an image that was just fr24 that I could use it to grab data from dump1090 running in a kubernetes cluster.
