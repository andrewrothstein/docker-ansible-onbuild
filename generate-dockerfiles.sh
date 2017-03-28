#!/usr/bin/env sh
dcb \
    --upstreamregistry docker.io \
    --upstreamgroup andrewrothstein \
    --upstreamapp docker-ansible \
    --snippetsdir . \
    --snippet snippet.j2 \
    --writeall \
    --writesubdirs
