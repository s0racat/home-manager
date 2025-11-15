{
  lib,
  buildEnv,
  mesa,
  libvdpau-va-gl,
  intel-media-driver,
  nvidia-vaapi-driver,
  linuxPackages,
  libglvnd,
  nvidia_x11 ? linuxPackages.nvidia_x11,
  addNvidia ? false,
}:

buildEnv {
  name = "non-nixos-gpu";
  paths = [
    mesa
    libvdpau-va-gl
    intel-media-driver
    libglvnd
  ]
  ++ lib.optionals addNvidia [
    nvidia_x11
    nvidia-vaapi-driver
  ];
}
