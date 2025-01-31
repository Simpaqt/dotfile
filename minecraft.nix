{ pkgs, lib, ... }:

{
  services.minecraft-server = {
    enable = true;
    eula = true;
    declarative = true;

    package = pkgs.minecraft-server;
    dataDir = "/Storage/minecraft";

    serverProperties = {
      gamemode = "survival";
      difficulty = "normal";
      simulation-distance = 10;
      level-seed = "4";
    };

    whitelist = { };

    jvmOpts = "-Xms4092M -Xmx4092M -XX:+UseG1GC";
  };
  networking.firewall = {
    enable = true;
    allowedTCPPorts = [ 25565 ]; # Minecraft server port
    allowedUDPPorts = [ 25565 ]; # Optional, if your server uses UDP
  };
}
