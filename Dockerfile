FROM ubuntu:22.04
# FROM rust:latest

# RUN apt update && apt install curl -y && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
COPY ./mdbook /bin/mdbook
# RUN cargo install mdbook
# WORKDIR /root/mdBook/
# RUN cargo build
# RUN cargo install --path /root/mdBook/ mdbook
# RUN mdbook