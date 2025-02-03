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
    swappy
    hyprshade
    hyprpicker
    zoxide
    fd
    fzf
    gcc
    swww
    wget
    wl-clipboard
    eza
    imagemagick
    onefetch
    ngrok
  ];
}
