{ config, pkgs, ... }:

{
  home.username = "tnmae";
  home.homeDirectory = "/home/tnmae";
  programs.git.enable = true;
  home.stateVersion = "25.11";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos-btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-dotfiles#nixos-btw";
    };
  };
}