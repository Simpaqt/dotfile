{ pkgs, ... }:

{
  virtualisation.docker.enable = true;
  users.users.simpa.extraGroups = [ "docker" ];
  environment.systemPackages = with pkgs; [
    bat
    btop
    gh-dash
    git
    protonup-qt
    unzip
    kitty
    github-cli
    lazygit
    podman
    starship
    wofi
    epy
    neovim
    grim
    fastfetch
    ripgrep
    luarocks
    yazi
    grimblast
    swappy
    postgresql
    hyprshade
    hyprpicker
    zoxide
    fd
    docker-compose
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
