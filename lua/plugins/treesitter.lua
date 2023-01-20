require 'nvim-treesitter.configs'.setup {
  -- 添加不同语言
  ensure_installed = { "vim","help","bash","c","cpp","javascript","json","lua","python","java","rust","dart","php" },
  
  highlight = { enable = true },
  indent = { enable = true },

  -- 不同括号颜色区分
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
