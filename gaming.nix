{ pkgs, lib, ... }:
{

  environment.systemPackages = with pkgs; [
    lutris
    gamemode
    bottles
    wine
    protonup-qt
    prismlauncher
    bottles

  ];
}
