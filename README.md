# aws-lambda-lxml

AWS Lambda precomiled binaries for lxml built for python 2.7 and python 3.6 runtimes.

`libxml2-dev` and `libxslt-dev` are not needed as they are included by default in the machines that run lambdas.

## Example usage

1. Put the lxml directory in the root of your lambda package
1. Import lxml and use as usual

```python
from lxml import etree


def handle(event, context):
    return etree.fromstring(event)

```

## Build it yourself

This repo contains a `build.sh` script that's intended to be run in an Amazon
Linux docker container, and build lxml for py27 and py36 for use in AWS Lambda.

To build the latest lxml (or any other platform-specific compiled libraries like numpy),
run the following:

```sh
$ docker run -v $(pwd):/outputs -it lambci/lambda:build-python{2.7|3.6} \
      pip install lxml -t /outputs/
```

Once you run this, you'll have a folder called `lxml` (you can ignore the other one
with the dist-info), which is the one you are going to place in the root of the
lambda package as specified in the [example](#example-usage)
