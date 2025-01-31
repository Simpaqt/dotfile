{ pkgs, lib, ... }:

{
  networking.firewall = {
    enable = true;
    networking.firewall.allowedTCPPorts = [
      443
      80
      25565
    ];

  };
  services.minecraft-server = {
    enable = true;
    eula = true;
    declarative = true;

    package = pkgs.minecraft-server;
    dataDir = "/Storage/";

    serverProperties = {
      gamemode = "survival";
      difficulty = "normal";
      simulation-distance = 10;
      level-seed = "4";
    };

    whitelist = { };

    jvmOpts = "-Xms4092M -Xmx4092M -XX:+UseG1GC";
  };
}
