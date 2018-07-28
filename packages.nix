with import <nixpkgs> {};
let unstable = import <unstable> {};
in
buildEnv {
  name = "nat";
  paths = [
    coreutils
    nix-prefetch-scripts

    bash-completion
    nix-bash-completions
    nix-zsh-completions
    zsh-completions

    fd
    findutils
    fzf
    gawk
    gnugrep
    gnupg
    gnutar
    htop
    imagemagickBig
    less
    p7zip
    pinentry
    ripgrep
    rxvt_unicode-with-plugins
    screen
    silver-searcher
    smartmontools
    stow
    time
    tmux
    unzip
    xz
    zsh
    zsh-syntax-highlighting

    # spell check
    aspell
    aspellDicts.en
    aspellDicts.en-computers
    aspellDicts.en-science
    aspellDicts.pl
    hunspell
    hunspellDicts.en-us
    hunspellDicts.en-gb-ize
    ispell

    # browsers
    firefox
    chromium

    # dev
    autoconf
    automake
    binutils
    clang
    cmake
    unstable.dhall
    emacs
    gnumake
    unstable.haskellPackages.dhall-nix
    llvm
    nodejs-9_x { enableNpm = true; }
    pkgconfig
    postgresql
    sloccount

    # haskell
    cabal-install
    cabal2nix
    nix-prefetch-git
    stack
    stack2nix

    # network
    cacert
    nmap
    rsync

    #
    feh
    fontconfig
    haskellPackages.taffybar
    haskellPackages.xmobar
    libreoffice
    mplayer
    ncpamixer
    pavucontrol
    python36Packages.mps-youtube
    xdg_utils
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    rofi
    vlc

    # keybase
    kbfs
    keybase
    keybase-gui

    # games
    steam
  ];
}
