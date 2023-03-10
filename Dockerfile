FROM ubuntu:20.04

RUN apt update && apt install curl -y && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

RUN cargo install mdbook