{ pkgs, ... }:

{


  environment.systemPackages = with pkgs; [
    vesktop
    spotify
    obs-studio
    protonmail-desktop
    google-chrome
    freetube
    mpv
  ];
}

