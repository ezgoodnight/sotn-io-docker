# sotn-io-docker

A containerized version of the repo running the SOTN.io randomizer for Castlevania Symphony of the Night.

A simple Nginx server is all that is needed to operate the app; Node is not needed.

It is mapped to localhost:30000 currently.

For the moment, it requires the SOTN.io repo to be cloned into the app. This will be fixed in later versions when we correct what's wrong with the submodule.

Commands:

`docker compose build`

`docker compose up -d`
