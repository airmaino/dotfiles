-- GENERAL --
vim.o.number         = true
vim.o.relativenumber = true
vim.o.confirm        = true
vim.o.cursorline     = true
vim.o.termguicolors  = true
vim.o.hidden         = true
vim.o.undofile       = true
vim.g.have_nerd_font = true
vim.o.splitbelow     = true
vim.o.splitright     = true
vim.o.smartindent    = true
vim.o.ignorecase     = true
vim.o.smartcase      = true
vim.o.hlsearch       = true
vim.o.incsearch      = true
vim.o.wrap           = false
vim.o.swapfile       = false
vim.o.showmode       = false
vim.o.expandtab      = false
vim.o.timeout        = true
vim.o.timeoutlen     = 250
vim.o.colorcolumn    = "0"
vim.o.scrolloff      = 19
vim.o.cmdheight      = 0
vim.o.laststatus     = 2
vim.o.shiftwidth     = 2
vim.o.tabstop        = 2
vim.o.softtabstop    = 2
vim.opt.fillchars    = vim.opt.fillchars + { eob = " " }
vim.o.shell          = "/usr/bin/zsh"
vim.o.langmap        = "ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
vim.opt.completeopt  = { "menu", "menuone", "noselect", "popup" }
vim.opt.shortmess:append "Iacst"
vim.o.clipboard      = "unnamedplus"
vim.o.winborder      = "rounded"
vim.o.guicursor      = "i:block"
vim.o.virtualedit    = "block"
vim.o.signcolumn     = "no"
vim.g.formatoptions  = "qn1"
vim.opt.list         = true
vim.opt.listchars    = {
	trail = "·",
	tab   = "··"
}

-- PLUGINS --
vim.pack.add({
	{ src = "https://github.com/meanderingprogrammer/render-markdown.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
	{ src = "https://github.com/wansmer/langmapper.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-orgmode/orgmode" },
	{ src = "https://github.com/nvim-mini/mini.pick" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/rktjmp/lush.nvim" },
	{ src = "https://github.com/saghen/blink.cmp" },
})

require "plugins.treesitter"
require "plugins.langmapper"
require "plugins.lspconfig"
require "plugins.org"
require "plugins.picker"
require "plugins.oil"
require "plugins.lush"
require "plugins.blink"

-- KEYMAPS --
vim.g.mapleader      = ' '
vim.g.maplocalleader = ','

vim.keymap.set('n', "<leader>q", ":silent! quit<CR>",       { silent = true })
vim.keymap.set('n', "<leader>r", ":silent! restart<CR>",    { silent = true })
vim.keymap.set('n', "<leader>w", ":silent! write<CR>",      { silent = true })
vim.keymap.set('n', "<ESC>",     ":silent! nohlsearch<CR>", { silent = true })
vim.keymap.set('n', "<C-n>",     ":bnext<CR>",              { silent = true })
vim.keymap.set('n', "<C-b>",     ":bprevious<CR>",          { silent = true })

vim.keymap.set('n', "<C-S-h>",   "<C-w>H" )
vim.keymap.set('n', "<C-S-j>",   "<C-w>J" )
vim.keymap.set('n', "<C-S-k>",   "<C-w>K" )
vim.keymap.set('n', "<C-S-l>",   "<C-w>L" )

vim.keymap.set('n', "<C-h>",     "<C-w>h" )
vim.keymap.set('n', "<C-j>",     "<C-w>j" )
vim.keymap.set('n', "<C-k>",     "<C-w>k" )
vim.keymap.set('n', "<C-l>",     "<C-w>l" )

vim.keymap.set('n', "<A-j>",     ":silent! m .+1<CR>==", { silent = true })
vim.keymap.set('n', "<A-k>",     ":silent! m .-2<CR>==", { silent = true })
vim.keymap.set('v', "<A-j>",     ":silent! m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', "<A-k>",     ":silent! m '<-2<CR>gv=gv", { silent = true })

-- PLUGINS keymaps --
vim.keymap.set('n', "<leader>f", ":Pick files<CR>", { silent = true })
vim.keymap.set('n', "<leader>h", ":Pick help<CR>", { silent = true })

vim.keymap.set('n', "<leader>e",  ":silent Oil --float<CR>", { silent = true })
vim.keymap.set('n', "<leader>ev", ":silent Oil --float ~/v/<CR>", { silent = true })
vim.keymap.set('n', "<leader>en", ":silent Oil --float ~/.dotfiles/.config/nvim/<CR>", { silent = true })

-- MY --
require "config.autocommands"
require "config.terminal"
require "config.statusline"
