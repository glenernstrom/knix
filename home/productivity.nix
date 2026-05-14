{ config, pkgs, ... }:

  {
    home.packages = with pkgs; [
      libreoffice-qt
      hunspell
      hunspellDicts.en_US
      hyphenDicts.en_US
      kdePackages.korganizer
      kdePackages.kmail
      kdePackages.kaddressbook
      kdePackages.akregator
      kdePackages.kontact
      kdePackages.marble
      kdePackages.ghostwriter
      kdePackages.francis
      kdePackages.accounts-qt
      kdePackages.kaccounts-integration
      kdePackages.kaccounts-providers
      kdePackages.kmail-account-wizard
      kdePackages.kontactinterface
      super-productivity
    ];

  }
