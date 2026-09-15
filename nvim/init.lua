-- Minimal Neovim setup for quick edits.

vim.g.mapleader = ','
vim.g.maplocalleader = ','
vim.g.editorconfig = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local opt = vim.opt

opt.number = true
opt.relativenumber = false
opt.signcolumn = 'yes'
opt.cursorline = true
opt.mouse = 'a'
opt.mousescroll = 'ver:3,hor:6'
opt.wrap = false
opt.scrolloff = 4
opt.sidescrolloff = 4

opt.expandtab = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

opt.ignorecase = true
opt.smartcase = true
opt.inccommand = 'split'
opt.splitbelow = true
opt.splitright = true

opt.clipboard = 'unnamedplus'
opt.undofile = true
opt.confirm = true
opt.updatetime = 200
opt.timeoutlen = 400

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
opt.fillchars = { eob = ' ', foldopen = '▾', foldclose = '▸' }

opt.termguicolors = true
opt.background = 'light'
vim.cmd.colorscheme('default')

-- Let the Alucard iTerm palette show through Neovim.
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'NONE' })

-- One plugin repository, managed by Neovim itself.
vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
}, { confirm = false })

require('mini.icons').setup()
require('mini.pairs').setup()
require('mini.pick').setup()
require('nvim-tree').setup({
  view = {
    side = 'left',
    width = 32,
    preserve_window_proportions = true,
  },
  renderer = {
    group_empty = false,
    highlight_git = 'name',
    icons = {
      git_placement = 'after',
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
  },
  git = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  update_focused_file = {
    enable = true,
  },
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
})
require('mini.git').setup()
require('mini.diff').setup({
  view = {
    style = 'sign',
    signs = { add = '┃', change = '┃', delete = '╸' },
  },
})
require('mini.statusline').setup({ use_icons = true })

-- Git gutter colors from Dracula Pro Alucard.
vim.api.nvim_set_hl(0, 'MiniDiffSignAdd', { fg = '#14710A', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'MiniDiffSignChange', { fg = '#846E15', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'MiniDiffSignDelete', { fg = '#CB3A2A', bg = 'NONE' })

local map = vim.keymap.set

map('n', '<leader>p', function()
  MiniPick.builtin.files()
end, { desc = 'Find files' })

map('n', '<leader>g', function()
  MiniPick.builtin.grep_live()
end, { desc = 'Search text' })

map('n', '<leader>n', function()
  require('nvim-tree.api').tree.toggle({ find_file = true, focus = true })
end, { desc = 'Toggle file tree' })

map('n', '<leader>d', function()
  MiniDiff.toggle_overlay(0)
end, { desc = 'Toggle Git diff overlay' })

map('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save file' })
map('n', '<leader>q', '<cmd>quit<cr>', { desc = 'Quit' })
map('n', '<esc>', '<cmd>nohlsearch<cr>', { desc = 'Clear search highlight' })

-- Preserve the useful two-space filetype preferences from the old vimrc.
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'coffee', 'lua', 'ruby', 'sass', 'scss', 'yaml' },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})
