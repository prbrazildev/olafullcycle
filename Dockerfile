FROM golang:alpine AS construtor

WORKDIR /app

COPY . .

RUN go build -o olafullcycle src/main.go

FROM scratch

COPY --from=construtor /app/olafullcycle /olafullcycle

CMD ["/olafullcycle"]
