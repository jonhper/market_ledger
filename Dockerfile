FROM golang:1.16-alpine

RUN mkdir /app
WORKDIR /app

#RUN apk update && apk add git
RUN export GO111MODULE=auto
RUN go get github.com/jonhper/market_ledger/
RUN cd /app && git clone https://github.com/jonhper/market_ledger.git

RUN cd /app/market_ledger/ && go build

EXPOSE 8080

ENTRYPOINT ["/app/market_ledger"]

#aasdfghjklñvxzxcvvbbnnnmmm,,,,,,,,..-frfrfrfrfrfrrrrrrrrrrrrrrrrrrrrrrrrrrrtfteh3f3hggf3ryrtr5rf4yttttttttttttteeeeeeeeeeeeeeefffffffffffffffffssssssssssssssssc