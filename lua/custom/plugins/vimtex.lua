return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    vim.cmd [[set conceallevel=2]]
    vim.cmd [[let g:tex_conceal='abdmg']]

    vim.g.vimtex_general_viewer = 'okular'
    --vim.g.vimtex_view_general_options = 'Okular'
    --vim.g.vimtex_view_general_options = '--unique file:@pdf#src:@line@tex'
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
        '--shell-escape',
      },
    }
  end,
}
