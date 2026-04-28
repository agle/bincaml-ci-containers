OCI images for Bincaml CI 
-------------------------

A set of OCaml OCI images, used to accelerate CI for various versions of OCaml.

We base the images on alpine to minimise size and separately write alpine linux
packages for the dependencies we need https://codeberg.org/agle/aaports

Usage:

  make
  podman login ghcr.io -u <user>
  make upload-ci


From this discussion: https://discuss.ocaml.org/t/github-ci-execution-times-for-ocaml-projects/17946/11
