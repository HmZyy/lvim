local H = {}
H.config = function()

  -- PDF Viewer:
  -- http://manpages.ubuntu.com/manpages/trusty/man5/zathurarc.5.html

  vim.g.vimtex_view_method = 'zathura'
  vim.g.vimtex_quickfix_mode = 0

  -- Ignore mappings
  vim.g.vimtex_mappings_enabled = 0

  -- Error Suppression:
  -- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt

  vim.g.vimtex_log_ignore = {
    'Underfull',
    'Overfull',
    'specifier changed to',
    'Token not allowed in a PDF string',
  }

  vim.g.vimtex_context_pdf_viewer = 1
  vim.g.vimtex_context_pdf_viewer = 'okular'

  vim.g.vimtex_syntax_conceal_cites = {
    type = 'brackets',
    icon = '📖',
  }

  vim.g.vimtex_quickfix_latexlog = {
    overfull = 0,
    underfull = 0,
    packages = {
      default = 0,
    },
  }

  vim.g.vimtex_quickfix_ignored_warnings = {
    'Underfull',
    'Overfull',
    'specifier changed to',
    'Token not allowed in a PDF string',
  }

  vim.g.vimtex_log_verbose = "0"

end
return H
