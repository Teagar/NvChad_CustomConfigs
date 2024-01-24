local autocmd = vim.api.nvim_create_autocmd
local opt = vim.opt
local g = vim.g
local lpath = vim.fn.stdpath "config" .. "/lua/custom/my-snippets"

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("VimEnter", {
  pattern = "*",
  callback = function()
    opt.statusline = "%#normal# "
  end,
})

opt.scrolloff = 8
opt.cmdheight = 2
-- opt.colorcolumn = '80'

opt.guicursor = ''

opt.backup = false
opt.writebackup = false

-- When cursor reaches end/beginning of line nothing happens
opt.whichwrap = opt.whichwrap - "<>[]hl"

require "custom.configs.format_onsave"
require "custom.configs.personalConfig"

g.vscode_snippets_path = lpath
g.snipmate_snippets_path = lpath

-- autocmd("VimEnter",{
--   pattern="*",
--   command="Nvdash",
-- })

-- autocmd("WinEnter", {
--    pattern = "*",
--    callback = function()
--       if vim.bo.buftype ~= "terminal" then
--          vim.opt.statusline = "%!v:lua.require'ui.statusline'.run()"
--       else
--          vim.opt.statusline = "%#normal# "
--       end
--    end,
-- })
