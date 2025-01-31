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
    grimblast
    zoxide
    fd
    fzf
    gcc
    swww
    wget
    wl-clipboard
    eza
    imagemagick
  ];
}
