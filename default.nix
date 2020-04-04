with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    php
    # stdenv
    gcc7
    openssl
    openssl.dev
    bison
    flex
    pkgconfig
    automake
    libelf
    glibc.out
    glibc.static

    cmake

    linux.nativeBuildInputs
    linux.moduleBuildDependencies


    # build-firefox dependencies
    gtk2
    yasm

  ];
  hardeningDisable = [ "all" ];
}
