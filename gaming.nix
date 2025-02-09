{ pkgs, lib, ... }:
{

  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    lutris
    gamemode
    wine
    protonup-qt
    wowup-cf
    prismlauncher
    smassh
  ];
}
