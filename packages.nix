with import <nixos> {};
let
  unstable = import <nixpkgs> {};
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
    unstable.direnv
    unstable.dhall
    unstable.emacs
    gnumake
    # marked as broken
    # haskellPackages.bhoogle
    haskellPackages.dhall-nix
    unstable.haskellPackages.hoogle
    unstable.haskellPackages.hpack
    pkgconfig
    sloccount

    # haskell
    cabal-install
    cabal2nix
    nix-prefetch-git
    stack
    stack2nix

    # ee
    unstable.gtkwave
    unstable.symbiyosys
    unstable.verilator
    unstable.verilog
    unstable.yosys
    (callPackage ./nix/firrtl-interpreter.nix {})

    # network
    cacert
    nmap
    rsync

    # utils
    # (unstable.haskellPackages.callPackage ./nix/clifm.nix {})
    feh
    fontconfig
    haskellPackages.taffybar
    haskellPackages.xmobar
    unstable.inkscape
    libreoffice
    mplayer
    ncpamixer
    obs-studio
    pandoc
    pavucontrol
    python36Packages.mps-youtube
    xdg_utils
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    rofi
    scrot
    texlive.combined.scheme-basic
    transmission-gtk
    vlc
    unstable.weechat
    unstable.zathura

    # keybase
    kbfs
    keybase
    keybase-gui

    # games
    steam
    unstable.pcsxr
    unstable.pcsx2
    unstable.rpcs3
    unstable.dolphinEmu
    unstable.xboxdrv

    unstable.slack
  ];
}
