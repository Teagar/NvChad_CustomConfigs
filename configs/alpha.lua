local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local board = {
  [[  _                              ]],
  [[ | |                             ]],
  [[ | |_ ___  __ _  __ _  __ _ _ __ ]],
  [[ | __/ _ \/ _` |/ _` |/ _` | '__|]],
  [[ | ||  __/ (_| | (_| | (_| | |   ]],
  [[  \__\___|\__,_|\__, |\__,_|_|   ]],
  [[                 __/ |           ]],
  [[                |___/            ]],
}

local data_exists, custom_dasboard = pcall(require, "core.config")
if data_exists then
  local data_board = custom_dasboard.header2
  if data_board ~= nil then
    board = data_board
  end
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = board
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
  dashboard.button("z", "鈴 Lazy", ":Lazy<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  local footer_text = "Teagar"
  if data_exists then
    local data_txt = custom_dasboard.footer
    if data_txt ~= nil then
      footer_text = data_txt
    end
  end

  return footer_text
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)

-- Disable statusline in dashboard
vim.api.nvim_create_autocmd("FileType", {
  pattern = "alpha",
  callback = function()
    -- store current statusline value and use that
    local old_laststatus = vim.opt.laststatus
    vim.api.nvim_create_autocmd("BufUnload", {
      buffer = 0,
      callback = function()
        vim.opt.laststatus = old_laststatus
      end,
    })
    vim.opt.laststatus = 0
  end,
})
