{ pkgs, lib, ... }:
{

  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    lutris
    gamemode
    bottles
    wine
    protonup-qt
    prismlauncher
  ];
}
