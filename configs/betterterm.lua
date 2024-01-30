require("betterTerm").setup()
-- require("betterTerm").setup {
--   prefix = "Term_",
--   startInserted = true,
--   position = "bot",
--   size = 18
-- }

local betterTerm = require("betterTerm")

vim.keymap.set(
  {"n", "t"}, "<leader>zo", betterTerm.open,
  { desc = "Open terminal" }
)

vim.keymap.set(
  {"n"}, "<leader>zs", betterTerm.select,
  { desc = "Select terminal"}
)

local current = 2

vim.keymap.set(
  {"n"}, "<leader>zn",
  function ()
    betterTerm.open(current)
    current = current + 1
  end,
  { desc = "New terminal" }
)

vim.keymap.set(
  "n", "<leader>ze",
  function()
    require("betterTerm").send(
      require("code_runner.commands").get_filetype_command(),
      1, { clean = false, interrupt = true}
    )
  end,
  { desc = "Execute File"}
)
