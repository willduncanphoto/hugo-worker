# hugo-worker

A testing ground for deploying hugo to cloudflare workers.

Cloudflare has hugo at 147.7 (at time of writing) but if you want to set it to a specific version that's a later release, you can use the environment variable for hugo on the worker build.

https://developers.cloudflare.com/workers/ci-cd/builds/build-image/#overriding-default-versions

HUGO_VERSION = 0.147.9