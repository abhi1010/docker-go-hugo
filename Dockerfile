FROM crosbymichael/golang

RUN apt-get update && apt-get install --no-install-recommends -y bzr

ENV WS '/src'
WORKDIR $WS

RUN go get github.com/spf13/hugo

ENTRYPOINT ["hugo"]
