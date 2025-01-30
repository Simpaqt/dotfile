{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vesktop
    spotify
    obs-studio

  ];
}

