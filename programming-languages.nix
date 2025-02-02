{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    rustup
    nodejs
    deno
    zig
    tailwindcss
    godot_4
  ];
}
