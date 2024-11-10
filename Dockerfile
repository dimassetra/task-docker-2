FROM golang:1.20-alpine
WORKDIR /app
COPY . .
RUN go build -o wise-word .
COPY AUTHORS.md /AUTHORS.md
EXPOSE 80
CMD ["/app/wise-word"]