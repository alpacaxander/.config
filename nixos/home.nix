{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "nvim";
  };

  programs = {
    vim = {
      enable = true;
    };

    neovim = {
      enable = true;
      defaultEditor = true;
    };

    bash = {
      enable = true;
      shellAliases = {
        ll = "ls -l";
      };
    };

    home-manager = {
      enable = true;
    };

    git = {
      enable = true;
      userEmail = "alexander.dean.paulsell@gmail.com";
      userName = "Alexander Paulsell";
    };
  };
}
