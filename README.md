### Docker-compose Setup for Standalone Deploy

Contains a `docker-compose` setup that runs all the containers needed to run `openroads`.

Runs the following containers as HTTP services:

    - The OpenRoads API
    - The OpenRoads Analytics Frontend
    - The OpenRoads Editor
    - Tilemap - TODO

This is connected to a database container (the database can optionally be run externally).

TODO: Add container to run `tiler` service as a cronjob

An Nginx container will run on port 80 and proxy traffic to the other containers. It will forward to other containers based on the host URL. To test locally, you need to add the following to your `/etc/hosts` file:

```
127.0.0.1   openroads-vn.com
127.0.0.1   api.openroads-vn.com
127.0.0.1   editor.openroads-vn.com
```

To run locally:

The `openroads-vn-api` repository is included as a git submodule. You will need to:

    git submodule update --init --recursive

Copy `.env.example` to `.env` and edit as required.

After that you can run:

    docker-compose build && docker-compose up

If you have made the changes to yours hosts file as described above, you should now be able to visit http://openroads-vn.com, http://editor.openroads-vn.com and http://api.openroads-vn.com in your browser and they will be served locally.






