FROM rust:1.73.0 as builder
WORKDIR /usr/src/app
COPY ./app .
RUN cargo install --path .
RUN cargo build --release

# FROM debian:buster-slim
# COPY --from=builder /usr/local/cargo/bin/rust_web_app /usr/local/bin/rust_web_app
# EXPOSE 8000
CMD ["app"]
