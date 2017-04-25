# aws-lambda-lxml

AWS Lambda precomiled binaries for lxml 3.6.4 built for python 2.7 and python 3.6 runtimes.

`libxml2-dev` and `libxslt-dev` are not needed as they are included by default in the machines that run lambdas.

## Example usage

1. Put the lxml directory in the root of your lambda package
1. Import lxml and use as usual

```python
from lxml import etree


def hanle(event, context):
    return etree.fromstring(event)

```
