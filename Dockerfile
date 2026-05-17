FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    ocaml \
    ocaml-native-compilers \
    ocaml-findlib \
    build-essential \
    m4 \
    ca-certificates \
    curl \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

# copy project into container
COPY . /workspace

RUN chmod +x /workspace/run_tests.sh || true

CMD ["/bin/bash"]
