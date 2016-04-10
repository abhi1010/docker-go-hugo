FROM golang:1.6

RUN apt-get update && apt-get install --no-install-recommends -y bzr

ENV WS '/src'
WORKDIR $WS

RUN go get github.com/spf13/hugo

# Setup pip
RUN wget https://bootstrap.pypa.io/get-pip.py \
  && python get-pip.py \
  && pip install Pygments

ENTRYPOINT ["hugo"]