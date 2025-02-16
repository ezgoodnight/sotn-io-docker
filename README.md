# sotn-io-docker

A containerized version of the repo running the SOTN.io randomizer for Castlevania Symphony of the Night.

A simple Nginx server is all that is needed to operate the app; Node is not needed.

It is mapped to localhost:30000 currently.

It's currently set up to use the randomizer app as a submodule. You may have to run the recursive submodule commands to clone all the requirements for the container, we will find out in further testing.

Commands:

`docker compose build`

`docker compose up -d`
