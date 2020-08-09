
# Not working yet.

# Strangely this seems to work manually after a failed run:
# $ nix-shell build-apache.nix
# $ phoronix-test-suite debug-benchmark build-apache
# ... fails eventually with:
#     Making all in apr
#     gcc: error: "-isystem: No such file or directory
#     make[3]: *** [/home/localuser/.phoronix-test-suite/installed-tests/pts/build-apache-1.6.1/httpd/srclib/apr/build/apr_rules.mk:206: tools/gen_test_char.lo] Error 1

# $ cd /home/localuser/.phoronix-test-suite/installed-tests/pts/build-apache-1.6.1/
# $ ls *.bz2 | xargs -n1 tar xjvf
# $ mv httpd-2.4.41 httpd
# $ mv apr-1.5.0 httpd/srclib/apr
# $ mv apr-util-1.5.3 httpd/srclib/apr-util
# $ cd httpd && ./configure --with-included-apr && cd ..
# $ ./build-apache

with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    php
    # stdenv
    #gcc7
    openssl
    openssl.dev
    bison
    flex
    pkgconfig
    autoconf
    automake
    libelf
    glibc.out
    glibc.static

    #cmake

    phoronix-test-suite
    file
    pcre
    #pcre-cpp
    libtool
    libcxx

    # build-apache dependencies
    curl
    jansson
    perl
    brotli
    openssl
    openldap
    libxml2
    nghttp2
    libiconv


  ];
  hardeningDisable = [ "all" ];
}






#{ pkgs ? import <nixpkgs> { } }:

#(pkgs.buildFHSUserEnv {
  #name = "apache-environment";
  #targetPkgs = pkgs:
    #(with pkgs; [
      #php
      #gcc7
      #openssl
      #openssl.dev
      #bison
      #flex
      #pkgconfig
      #autoconf
      #automake
      #libelf
      #glibc.out
      #glibc.static

      #phoronix-test-suite
      #file
      #pcre
      #pcre-cpp
      #libtool

      ## build-apache dependencies
      #perl
      #brotli
      #openssl
      #openldap
      #libxml2
      #nghttp2
      #libiconv
    #]);
  ##multiPkgs = pkgs: (with pkgs; [ udev alsaLib ]);
  #runScript = "bash";
#}).env

