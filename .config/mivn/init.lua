-- GENERAL --
vim.o.number         = true
vim.o.relativenumber = true
vim.o.cursorline     = true
vim.o.cursorline     = true
vim.o.termguicolors  = true
vim.o.hidden         = true
vim.o.undofile       = true
vim.g.have_nerd_font = true
vim.o.confirm        = true
vim.o.ignorecase     = true
vim.o.hlsearch       = true
vim.o.incsearch      = true
vim.o.wrap           = false
vim.o.swapfile       = false
vim.o.showmode       = false
vim.o.expandtab      = false
vim.o.shiftwidth     = 4
vim.o.tabstop        = 4
vim.o.softtabstop    = 4
vim.o.scrolloff      = 23
vim.opt.fillchars    = vim.opt.fillchars + { eob = " " }
vim.o.shell          = '/usr/bin/zsh'
vim.o.langmap        =
"ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz"
vim.opt.completeopt  = { 'menu', 'menuone', 'noselect', 'popup' }
vim.opt.clipboard:append("unnamedplus")
vim.opt.shortmess:append 'c'
vim.opt.shortmess:append 'I'
vim.opt.winborder   = "rounded"
vim.o.signcolumn    = "no"
vim.g.formatoptions = 'qn1'
vim.o.concealcursor = "nc"
vim.opt.list        = true
vim.opt.listchars   = {
  trail = "·",
  tab   = "··"
}



-- PLUGINS --
vim.opt.packpath:prepend(vim.fn.stdpath("data") .. "/site")

vim.pack.add({
  --{ src = "https://github.com/MeanderingProgrammer/render-markdown.nvim" },
  { src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },
  { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/nvim-lualine/lualine.nvim" },
  { src = "https://github.com/Wansmer/langmapper.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/echasnovski/mini.pick" },
  { src = "https://github.com/nvimdev/lspsaga.nvim" },
  { src = "https://github.com/nvim-neorg/neorg" },
  { src = "https://github.com/stevearc/oil.nvim" },
  { src = "https://github.com/rktjmp/lush.nvim" },
  { src = "https://github.com/saghen/blink.cmp" },
})

require "nvim-web-devicons".setup()
require "plugins.langmapper"
require "plugins.treesitter"
require "plugins.lspconfig"
require "plugins.lualine"
require "plugins.picker"
require "plugins.blink"
require "plugins.oil"
require("lush")(require("plugins.lush"))
require "plugins.diagnostic"

require "my.autocmds"
require "my.terminal"
require "my.autopairs"

--require "plugins.lspsaga"

-- KEYMAPS --
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>q', ':silent quit<CR>', { silent = true })
vim.keymap.set('n', '<leader>r', ':silent restart<CR>', { silent = true })
vim.keymap.set('n', '<ESC>', ':silent nohlsearch<CR>', { silent = true })
vim.keymap.set('n', '<leader>w', ':silent write<CR>', { silent = true })

vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })

-- PLUGINS keymaps --
vim.keymap.set('n', '<leader>f', ':Pick files<CR>', { silent = true })
vim.keymap.set('n', '<leader>h', ':Pick help<CR>', { silent = true })

vim.keymap.set('n', '<leader>e', ':silent Oil --float<CR>', { silent = true })
vim.keymap.set('n', '<leader>vd', ':silent Oil --float /home/civr/dcs/vault<CR>', { silent = true })
vim.keymap.set('n', '<leader>vn', ':silent Oil --float /home/civr/.config/nvim<CR>', { silent = true })
