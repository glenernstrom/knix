{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;

    initExtra = ''
    nix_shell_prompt() {
      if [[ -n "$IN_NIX_SHELL" ]]; then
        printf "(%s) " "''${DEVSHELL_NAME:-nix}"
      fi
  }

  PS1='\[\e[1;32m\][$(nix_shell_prompt)\u@\h \w]\$\[\e[0m\] '
'';
   };

  programs.fish = {
    enable = true;
  };

  home.packages = with pkgs; [
    pay-respects
    tree
    zellij
  ];
}
