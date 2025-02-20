{ pkgs, ... }:

{


  environment.systemPackages = with pkgs; [
    vesktop
    spotify
    obs-studio
    protonmail-desktop
    parsec-bin
    google-chrome
    freetube
    mpv
  ];
}

