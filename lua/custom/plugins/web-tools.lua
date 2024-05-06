-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  require('web-tools').setup {
    keymaps = {
      rename = nil, -- by default use same setup of lspconfig
      repeat_rename = '.', -- . to repeat
    },
    hurl = { -- hurl default
      show_headers = false, -- do not show http headers
      floating = false, -- use floating windows (need guihua.lua)
      json5 = false, -- use json5 parser require json5 treesitter
      formatters = { -- format the result by filetype
        json = { 'jq' },
        html = { 'prettier', '--parser', 'html' },
      },
    },
  },
}
