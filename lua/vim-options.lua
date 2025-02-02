



local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  fileencoding = "utf-8",                  -- the encoding written to a file
  hlsearch = true,                         -- highlight all matches on previous search pattern (false == remove highlight after search)
  ignorecase = true,                       -- ignore case in search patterns
  mouse = "a",                             -- allow the mouse to be used in neovim
  pumheight = 10,                          -- pop up menu height
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  showtabline = 2,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeout = true,
  timeoutlen = 300,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  relativenumber = false,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}

  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = true,                             -- display lines as one long line
  linebreak = true,                        -- companion to wrap, don't split words
  scrolloff = 8,                           -- minimal number of screen lines to keep above and below the cursor
  sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
  guifont = "monospace:h17",               -- the font used in graphical neovim applications
  whichwrap = "bs<>[]hl",                  -- which "horizontal" keys are allowed to travel to prev/next line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.virtualedit='block'

-- vim.opt.shortmess = "ilmnrx"                        -- flags to shorten vim messages, see :help 'shortmess'
vim.opt.shortmess:append "c"                           -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append "-"                           -- hyphenated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" })        -- don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles")  -- separate vim plugins from neovim in case vim still in use

--  We need this python3_host_prog so that we don't get a nvim 'provider' error when we :checkhealth
--  Might be an Ubuntu thing or just my computer
--  Note: I also had to run 'python -m pip install --user pynvim' in a terminal
vim.g.python3_host_prog = '/usr/bin/python3'

vim.opt.spelllang="en_gb"

-- Please see this for a list of colors :)
-- https://i.pinimg.com/originals/aa/c1/aa/aac1aadcb55011e7e06ff651e99f61f1.png
vim.api.nvim_set_hl(0, "Visual", {bg='darkseagreen1'}) -- black is OK

-- vim.api.nvim_set_hl(0, "Visual", {bg='lightmagenta'}) -- not OK
-- vim.api.nvim_set_hl(0, "Visual", {bg='darkgrey'})  -- darkgrey is not OK

--Set libclang searchpath. This should point to the directory containing `libclang.so`.
-- Leave empty to auto-detect.
vim.g.grayout_libclang_path = ''

--
-- -----------------------------------------------------------
-- -- Tabs, indent
-- -----------------------------------------------------------
-- vim.o.expandtab = true      -- use spaces instead of tabs
-- vim.o.shiftwidth = 4        -- shift 4 spaces when tab
-- vim.o.tabstop = 4           -- 1 tab == 4 spaces
-- vim.o.smartindent = true    -- autoindent new lines
--
--
-- -----------------------------------------------------------
-- -- Memory, CPU
-- -----------------------------------------------------------
-- vim.o.hidden = true         -- enable background buffers
-- vim.opt.history = 100         -- remember n lines in history
-- vim.opt.lazyredraw = true     -- faster scrolling
-- vim.opt.synmaxcol = 240       -- max column for syntax highlight
--
