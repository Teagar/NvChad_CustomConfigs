local status_ok, ufo = pcall(require, "ufo")
if not status_ok then
  return
end


local opts = {
  filetype_exclude = {
    'help',
    'alpha',
    'dashboard',
    'neo-tree',
    'Trouble',
    'lazy',
    'mason'
  },
}

-- Automatically detach UFO for excluded filetypes
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('local_detach_ufo', { clear = true }),
  pattern = opts.filetype_exclude,
  callback = function()
    require('ufo').detach()
  end,
})

-- Set initial foldlevelstart
vim.opt.foldlevelstart = 99
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- vim.o.foldcolumn="1"

-- Configure UFO with the specified options
require('ufo').setup(opts)

