---- configs ------------------------------------------------------------------

-- settings.lua ---------------------------------------------------------------
local opt = vim.opt
local api = vim.api
-- Teagar Configs -- 
--opt.colorcolumn = '80'
-- Fix cursor when switching from insert mode to normal
-- api.nvim_set_keymap('i', '<Esc>', '<Esc>`^', { noremap = true })
vim.cmd([[
  augroup highlight_current_buffer
    autocmd!
    autocmd WinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
  augroup END
]])

-- mappings -------------------------------------------------------------------
vim.cmd([[

" Adding an empty line below, above and below with insert
nmap op o<Esc>k
nmap oi O<Esc>j
nmap oo A<CR>

]])

-- relative Numbers
-- vim.cmd([[set number relativenumber]])
vim.cmd([[
set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
]])

---- plugins ------------------------------------------------------------------


-- plugins --------------------------------------------------------------------


-- utils ----------------------------------------------------------------------
-- VirtColumn -----------------------------------------------------------------
-- require("virt-column").setup()
--vim.cmd([[highlight VirtColumn guifg=#FF7A91]])


-- test -----------------------------------------------------------------------

-- Test saved JS file with Node
vim.cmd([[
  autocmd FileType javascript nnoremap tns :execute "!node " . expand("%")<CR>
]])

-- Test unsaved JS file with Node
vim.cmd([[
  function! TestCurrentJavaScriptCode()
    if &filetype ==# 'javascript'
        let code = getline(1, '$')
        let temp_file = tempname()
        call writefile(code, temp_file)
        execute '!node ' . temp_file
        silent! !rm ' . temp_file
    else
        echo 'The current file is not a JavaScript'
    endif
endfunction

nnoremap tnu :call TestCurrentJavaScriptCode()<CR>
]])

-- Test saved C# file with mono
vim.cmd([[
  autocmd FileType cs nnoremap tms :execute "!mcs -out:" . expand("%:r") . ".exe " . expand("%") . ' && mono ' . expand("%:r") . '.exe'<CR>
]])

