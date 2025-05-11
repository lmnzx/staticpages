FROM cgr.dev/chainguard/go:latest AS build
WORKDIR /controller
COPY . . 
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o controller cmd/controller/*.go

FROM cgr.dev/chainguard/static:latest
COPY --from=build /controller/controller /controller
ENTRYPOINT ["/controller"]
