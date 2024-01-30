---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<S-Down>"] = { "<cmd>t.<cr>", " ", opts = { nowait = true }},
    ["<M-Down>"] = { "<cmd>m+<cr>", " ", opts = { nowait = true }},
    ["<S-Up>"] = { "<cmd>t -1<cr>", " ", opts = { nowait = true }},
    ["<M-Up>"] = { "<cmd>m-2<cr>", " ", opts = { nowait = true }},
    ["<C-s>"] = { "<cmd>w<cr>", " ", opts = { nowait = true }},
    ["<C-l>"] = { "<cmd>LiveServer start<cr><cr>", " ", opts = { nowait = true }},
  },
  v = {
    ["<A-j>"] = { ":m .+1<CR>==", " ", opts = { nowait = true } },
    ["<A-k>"] = { ":m .-2<CR>==", " ", opts = { nowait = true } },
    ["J"] = { ":move '>+1<CR>gv-gv", " ", opts = { nowait = true } },
    ["K"] = { ":move '<-2<CR>gv-gv", " ", opts = { nowait = true } },
    -- ["<A-j>"] = { ":move '>+1<CR>gv-gv", " ", opts = { nowait = true } },
    ["<A-Down>"] = { ":move '>+1<CR>gv-gv", " ", opts = { nowait = true } },
    -- ["<A-k>"] = { ":move '<-2<CR>gv-gv", " ", opts = { nowait = true } },
    ["<A-Up>"] = { ":move '<-2<CR>gv-gv", " ", opts = { nowait = true } },
    ["<S-Down>"] = { ":'<,'>t'><cr>", " ", opts = { nowait = true } },
  },
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<S-Down>"] = { "<cmd>t.<cr>", " ", opts = { nowait = true } },
    ["<S-Up>"] = { "<cmd>t -1<cr>", " ", opts = { nowait = true } },
    ["<M-J>"] = { "<cmd>t.<cr>", " ", opts = { nowait = true } },
    ["<M-K>"] = { "<cmd>t -1<cr>", " ", opts = { nowait = true } },
    ["<M-Down>"] = { "<cmd>m+<cr>", " ", opts = { nowait = true } },
    ["<M-Up>"] = { "<cmd>m-2<cr>", " ", opts = { nowait = true } },
    ["<M-j>"] = { "<cmd>m+<cr>", " ", opts = { nowait = true } },
    ["<M-k>"] = { "<cmd>m-2<cr>", " ", opts = { nowait = true } },
    ["<leader>bb"] = { "<cmd>tabnew<cr>", " ", opts = { nowait = true } },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", " ", opts = { nowait = true } },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", " ", opts = { nowait = true } },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", " ", opts = { nowait = true } },
  },
}
-- custom which key here
M.whichkey={
  n = {
    ["<leader>o"] = { "<cmd> NvimTreeFocus <CR>", "Testing Mapping" },
  }
}

-- more keybinds!

return M
