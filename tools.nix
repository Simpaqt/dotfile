{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    bat
    btop
    unzip
    grim
    fastfetch
    ripgrep
    luarocks
    yazi
    zoxide
    fd
    fzf
    gcc
    swww
    weget
    wl-clipboard
    imagemagick

  ];
}
