# aws-lambda-lxml

AWS Lambda precomiled binaries for lxml built for python 2.7 and python 3.6 runtimes.

`libxml2-dev` and `libxslt-dev` are not needed as they are included by default in the machines that run lambdas.

## Example usage

1. Put the lxml directory in the root of your lambda package
1. Import lxml and use as usual

```python
from lxml import etree


def hanle(event, context):
    return etree.fromstring(event)

```

## Build it yourself

This repo contains a `build.sh` script that's intended to be run in an Amazon
Linux docker container, and build lxml for py27 and py36 for use in AWS Lambda.

To build the latest lxml, pull the Amazon Linux image and run the build script in
it.

```sh
$ docker pull amazonlinux:2016.09
$ docker run -v $(pwd):/outputs -it amazonlinux:2016.09 \
      /bin/bash /outputs/build.sh
```

Once you run this, you'll have a two folders named `py27` and `py36` each of them
containing a folder called `lxml` (ignore the other one with the dist-info), which
is the one you are going to place in the root of the lambda package as specified
in the [example](#example-usage)
