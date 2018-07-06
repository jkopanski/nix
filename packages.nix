with import <nixpkgs> {};

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
    gnutar
    htop
    imagemagickBig
    less
    p7zip
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
    emacs
    gnumake
    llvm
    nodejs-9_x { enableNpm = true; }
    pkgconfig
    postgresql
    sloccount
  
    # haskell
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
    ncpamixer
    pavucontrol
    python36Packages.mps-youtube
    xdg_utils
    xfce.thunar
    xfce.thunar-archive-plugin
    xfce.thunar-volman
    rofi
  
    # keybase
    kbfs
    keybase
    keybase-gui
  
    # games
    steam
  ];
}
