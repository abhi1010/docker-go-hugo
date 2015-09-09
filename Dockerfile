FROM crosbymichael/golang

RUN apt-get update && apt-get install --no-install-recommends -y bzr

ENV WS '/src'
WORKDIR $WS

# RUN git init
# RUN git remote set-url origin git@github.com:hugo-abhi1010.git
# RUN git config --get remote.origin.url

RUN go get github.com/spf13/hugo

ENTRYPOINT ["hugo"]
# ENTRYPOINT ["/bin/bash"]
# CMD ["-s", "/src/hugo-abhi1010/", "-d", "/Users/apandey/code/tmp/hg"]
