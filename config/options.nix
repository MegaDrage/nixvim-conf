{ lib, pkgs, ... }:

{
  config.opts = {
    updatetime = 100;

    number = true;
    relativenumber = true;
    signcolumn = "yes";

    scrolloff = 5;

    autoindent = true;

    clipboard = "unnamedplus";

    expandtab = true;
    shiftwidth = 4;
    smartindent = true;
    smarttab = true;
    tabstop = 4;

    ignorecase = true;
    incsearch = true;
    smartcase = true;
    ruler = true;
    wildmode = "list:longest";

    swapfile = false;
    undofile = true;

    #Mouse
    mouse = "a";
    mousefocus = true;
    termguicolors = lib.mkForce pkgs.stdenv.isLinux;
  };
}
