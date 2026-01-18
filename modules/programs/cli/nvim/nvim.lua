local function wipe_mappings()
  local modes = { "n", "v", "x", "o", "t", "s" } 
  local noremap_opts = { noremap = true, silent = true }
  local core_keys = { "d", "c", "y", "i", "a", "o", "s", "r", "p", "x", "D", "C", "Y", "I", "A", "O", "S", "R", "P", "X", "J", "K", "L", "M", "G", "Z", "h", "j", "k", "l", "w", "b", "e", "f", "t", "F", "T", "0", "$", "^", "_", "H", "{", "}", "(", ")", "[", "]", "<", ">", "m", "'", "`", "u", ".", "&", "~", "v", "V", "/", "?", "n", "N", "*", "#", "@", "Q", "q", ":", "=", "!", "|", "\"", "<CR>", "<Tab>", "<BS>","<C-R>", }
  for _, mode in ipairs(modes) do
    for _, key in ipairs(core_keys) do
      -- Map the key to <Nop> (No Operation) in the current mode
      vim.api.nvim_set_keymap(mode, key, "<Nop>", noremap_opts)
    end
  end
  local hard_clear_keys = { "<C-U>", "<C-D>", "<C-W>", "<C-Y>", "<C-E>", "<C-V>", "<C-A>", "<C-X>", "<C-F>", "<C-B>", "<C-G>" }
  for _, key in ipairs(hard_clear_keys) do
    vim.api.nvim_set_keymap("n", key, "<Nop>", noremap_opts)
  end
end
wipe_mappings()

local opts = { noremap = true, silent = true }
vim.keymap.set({"n", "v"}, ";", ":") -- Enter command mode

vim.keymap.set({"n", "v"}, "i", "gk", opts) -- Go up visual line
vim.keymap.set({"n", "v"}, "k", "gj", opts) -- Go down visual line
vim.keymap.set({"n", "v"}, "j", "h", opts) -- Go left
vim.keymap.set({"n", "v"}, "l", "l", opts) -- Go right
vim.keymap.set("i", "<Esc>", "<Esc>l", opts) -- Cursor fix insert mode

vim.keymap.set({"n", "v"}, "e", "i", opts) -- Enter insert mode
vim.keymap.set({"n", "v"}, "s", "v", opts) -- Enter visual mode
vim.keymap.set({"n", "v"}, "y", "y", opts) -- Copy
vim.keymap.set({"n", "v"}, "p", "Pl", opts) -- Paste
vim.keymap.set({"n", "v"}, "u", "u", opts) -- Undo
vim.keymap.set({"n", "v"}, "U", "<C-R>", opts) -- Redo
vim.keymap.set("n", "x", '"_x', opts) -- Delete /wo yank in normal mode
vim.keymap.set("v", "x", '"_d', opts) -- Delete /wo yank in visual mode

vim.keymap.set({"n", "v"}, "W", "w", opts) -- Goto word start
vim.keymap.set({"n", "v"}, "w", "e", opts) -- Goto word end
vim.keymap.set({"n", "v"}, "b", "b", opts) -- Go back a word
vim.keymap.set({"n", "v"}, "gj", "g0", opts) -- Goto start of visual line
vim.keymap.set({"n", "v"}, "gl", "g$", opts) -- Goto end of visual line
vim.keymap.set({"n", "v"}, "gs", "^", opts) -- Goto start of first non white space in the line
-- vim.keymap.set({"n", "v"}, "gi", "20k", opts) -- Go 30 lines up
-- vim.keymap.set({"n", "v"}, "gk", "20j", opts) -- Go 30 lines down
vim.keymap.set({"n", "v"}, "gi", "<C-u>", opts) -- Go 30 lines up
vim.keymap.set({"n", "v"}, "gk", "<C-d>", opts) -- Go 30 lines down

vim.keymap.set("n", "gb", "G", opts) -- Goto bottom of buffer ( <n> + gr = goto line number <n> )
vim.keymap.set("n", "gt", "gg", opts) -- Goto top of buffer
vim.keymap.set("n", "gf", "gf", opts) -- Goto file under cursor

vim.keymap.set("n", "ff", "/", opts) -- find
vim.keymap.set({"n", "v"}, "fl", "n", opts) -- Find next
vim.keymap.set({"n", "v"}, "fj", "N", opts) -- Find previous
vim.keymap.set("n", "fc", ":nohlsearch<CR>", opts) -- Find clear

vim.keymap.set("n", "bn", ":tabnew<CR>", opts) -- Create new tab
vim.keymap.set("n", "bx", ":tabclose<CR>", opts) -- Close current tab
vim.keymap.set("n", "bj", ":tabprevious<CR>", opts) -- Goto previous tab
vim.keymap.set("n", "bl", ":tabnext<CR>", opts) -- Goto next tab

vim.keymap.set({"n", "v"}, "r", ".", opts) -- Macros

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_python3_provider = 1
vim.g.loaded_node_provider = 1
vim.g.loaded_ruby_provider = 1
vim.g.loaded_perl_provider = 1
vim.g.loaded_gzip = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_man = 1
vim.diagnostic.disable()
vim.diagnostic.enable(false)

vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.virtualedit = "onemore"
vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.showmatch = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.backspace = "indent,eol,start"
vim.opt.hidden = false
vim.opt.list = true
vim.opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
  lead = ' ',
  multispace = '··'
}

-- Plugin specific
-- require'nvim-treesitter.configs'.setup { auto_sync = true, highlight = { enable = true } }
require'colorizer'.setup()

-- Statusline
local function mode_icon()
  local mode = vim.fn.mode()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
    ["\22"] = "V-BLOCK",
    c = "COMMAND",
    s = "SELECT",
    S = "S-LINE",
    ["\19"] = "S-BLOCK",
    R = "REPLACE",
    r = "REPLACE",
    ["!"] = "SHELL",
    t = "TERMINAL",
  }
  return modes[mode] or mode:upper()
end
_G.mode_icon = mode_icon
vim.api.nvim_set_hl(0, "StatusLineBold", { bold = true })
vim.opt.showmode = false
local function setup_dynamic_statusline()
  -- Focused window
  vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
    callback = function()
      vim.opt_local.statusline = table.concat {
        "  ",
        "%#StatusLineBold#",
        "%{v:lua.mode_icon()}",
        "%#StatusLine#",
        " │ %f %h%m%r",
        "%=",               -- Right align
        "%l:%c  %P ",
      }
    end,
  })
  -- Unfocused window
  vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
    callback = function()
      vim.opt_local.statusline =
        "  %f %h%m%r %= %l:%c  %P "
    end,
  })
end
setup_dynamic_statusline()
