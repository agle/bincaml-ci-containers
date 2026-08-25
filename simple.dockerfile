
ARG OCAML_VERSION=5.4
ARG GIT_SHA=main

FROM docker.io/ocaml/opam:debian-ocaml-$OCAML_VERSION
RUN opam repository add --all pac https://github.com/uq-pac/opam-repository.git
RUN git clone https://github.com/UQ-PAC/bincaml.git bincaml \
  && cd bincaml && git checkout $GIT_SHA \
  && opam install --deps-only --yes --with-test . \
  && cd .. && rm -rf bincaml
