{
  description = "MegaDrage's neovim config made with Nix n nixvim";
  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, nixvim, flake-utils, ... }@inputs:
}
