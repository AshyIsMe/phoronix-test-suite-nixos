{ pkgs ? import <nixpkgs> { } }:

(pkgs.buildFHSUserEnv {
  name = "blender-environment";
  targetPkgs = pkgs:
    (with pkgs; [
      udev
      alsaLib

      php

      blender
      freeglut
      opencl-clang
      opencl-headers
      clinfo
      openal
      libGL
      libGLU

    ]) ++ (with pkgs.xorg; [
      libX11
      libXcursor
      libXrender
      libXrandr
      libXi
      libXxf86vm
      libXfixes
      libXi

      libXext

    ]);
  multiPkgs = pkgs: (with pkgs; [ udev alsaLib ]);
  runScript = "bash";
}).env

