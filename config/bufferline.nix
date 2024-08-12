{
  plugins.bufferline = {
    enable = true;
    mode = "buffers";
    indicator = {
      style = "icon";
      icon = "  ";
    };
    separatorStyle = "thin";
    diagnostics = "nvim_lsp";
    offsets = [{
      fileType = "neo-tree";
      text = "File Explorer";
      separator = true;
      padding = 1;
    }
    ];
  };
}
