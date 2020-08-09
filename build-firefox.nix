
# Not working yet

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

    #cmake

    phoronix-test-suite

    # build-firefox dependencies
    gtk2 perl zip libjpeg zlib bzip2
    dbus dbus-glib pango freetype fontconfig xorg.libXi xorg.libXcursor
    xorg.libX11 xorg.libXrender xorg.libXft xorg.libXt file
    libnotify xorg.pixman yasm libGLU libGL
    xorg.libXScrnSaver xorg.xorgproto
    xorg.libXext unzip makeWrapper
    libevent libstartup_notification /* cairo */
    libpng jemalloc glib
    nasm
    nspr nss


  ];
  hardeningDisable = [ "all" ];
}
