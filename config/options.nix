{ lib, pkgs, ... }:

{
  config = {
    clipboard = {
      providers = {
        wl-copy.enable = true; # For Wayland
        xsel.enable = true; # For X11
      };
      register = "unnamedplus";
    };

    opts = {
      updatetime = 250;
      timeoutlen = 300;

      number = true;
      relativenumber = true;

      signcolumn = "yes";
      showmode = false;
      breakindent = false;

      scrolloff = 10;

      autoindent = true;

      expandtab = true;
      shiftwidth = 4;
      smartindent = true;
      smarttab = true;
      tabstop = 4;

      ignorecase = true;
      incsearch = true;
      smartcase = true;
      ruler = true;
      wildmenu = true;
      wildmode = "list:full";

      swapfile = false;
      undofile = true;

      #Mouse
      mouse = "a";
      mousefocus = true;
      termguicolors = lib.mkForce pkgs.stdenv.isLinux;
      showcmd = false;

      splitright = true;
      splitbelow = true;

      inccommand = "split";

      cursorline = true;
    };
  };
}
