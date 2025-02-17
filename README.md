# sotn-io-docker

A containerized version of the repo running the SOTN.io randomizer for Castlevania Symphony of the Night.

It is mapped to localhost:30000 currently.

This uses the SotN-Randomizer as a submodule.

## Dev Notes

Commands:

`docker compose build`

`docker compose up -d`

To stop:

`docker compose down`


### Node Only

As an academic exercise for two nerds who are not familiar with node, the `nodeonly` version helped us get familiar with the original problem: static files like css weren't being served.

This version is probably sufficient for users running this only for themselves and without external access. Not being JS devs ourselves, assume it's riddled with basic issues regarding security. That said, all we did was get the docker container working with node serving the files.

### CLI Commands and external files

The built in CLI commands will work with this container because it is running node. We will be developing this container further to include paths to files so the commands can be executed for folks that don't want to use the web interface.