# sotn-io-docker

A containerized version of the repo running the SOTN.io randomizer for Castlevania Symphony of the Night.

A simple Nginx server is all that is needed to operate the app; Node is not needed.

It is mapped to localhost:30000 currently.

It's currently set up to use the randomizer app as a submodule. You may have to run the recursive submodule commands to clone all the requirements for the container, we will find out in further testing.

## Dev Notes

Commands:

For the master branch's nginx workflow:

`docker compose build`

`docker compose up -d`

To stop:

`docker compose down`

If you want to work with the node only version (no NGINX as a server):

`docker compose build -f docker-compose-nodeonly.yml`

`docker compose -f docker-compose-nodeonly.yml up -d`

To stop:

`docker compose -f docker-compose-nodeonly.yml down`

## Why Two Versions?

This was an interesting exercise to get things to work for us. It was useful to get a bit more familiar with node, and to learn a proper nginx deployment.

### Node Only

As an academic exercise for two nerds who are not familiar with node, the `nodeonly` version helped us get familiar with the original problem: static files like css weren't being served.

This version is probably sufficient for users running this only for themselves and without external access. Not being JS devs ourselves, assume it's riddled with basic issues regarding security. That said, all we did was get the docker container working with node serving the files.

### NGINX

NGINX is an industry-standard deployment and reverse proxy tool. It's great for serving static content, which the original project basically is. This is more robust in terms of performance, but you should still do your due diligence with regards to security.

This container copies the relevant build files and just serves them as it. The `nginx.conf` is the key to getting things organized, and the data is built into the image, so no changes should occur. Updates will necessitate rebuilding the image, but that's also true for the Node Only version.


