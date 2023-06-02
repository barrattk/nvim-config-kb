

local opts = {noremap = true, silent = true}

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true }) -- leader is the Space

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Ranger
vim.keymap.set('n', '<leader>e', function() require('ranger-nvim').open() end, { desc = 'Ranger' })
vim.g.ranger_map_keys=0

-- Better window navigation
vim.keymap.set('n', "<C-h>", "<C-w>h", {desc = "Window Navigation"})
vim.keymap.set('n', "<C-j>", "<C-w>j", {desc = "Window Navigation"})
vim.keymap.set('n', "<C-k>", "<C-w>k", {desc = "Window Navigation"})
vim.keymap.set('n', "<C-l>", "<C-w>l", {desc = "Window Navigation"})

-- Resize with arrows
vim.keymap.set('n', "<C-Up>", "<cmd>resize -2<CR>", {desc = 'Resize'})
vim.keymap.set('n', "<C-Down>", "<cmd>resize +2<CR>", {desc = 'Resize'})
vim.keymap.set('n', "<C-Left>", "<cmd>vertical resize -2<CR>",{desc = 'Resize'})
vim.keymap.set('n', "<C-Right>", "<cmd>vertical resize +2<CR>",{desc ='Resize'})

-- Navigate buffers
vim.keymap.set('n', "<S-l>", ":bnext<CR>", {desc = 'Buffer (Next)'})
vim.keymap.set('n', "<S-h>", ":bprevious<CR>", {desc = 'Buffer (Prev)'})

-- Stay in visual_mode after shift operation
vim.keymap.set('v', ">", ">gv", opts)
vim.keymap.set('v', "<", "<gv", opts)

-- Press these to fast to exit insert mode
vim.keymap.set('i', "jj", "<ESC>", opts)
vim.keymap.set('i', "kj", "<ESC>", opts)
vim.keymap.set('i', "jk", "<ESC>", opts)

-- Move text up and down
vim.keymap.set('n', "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set('n', "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)

-- Paste in visual mode
vim.keymap.set("v", "p", '"_dP', opts)

-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)



-- Use escape to leave insert mode in terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)



-- local M = {}

--
-- M.disabled = {
--   n = {
--     ["<C-n>"] = "", -- Cancel this Neo-tree mapping for yanky mapping below
--     ["<leader>e"] = "",
--     ["<leader>x"] = "", -- Cancel this close buffer mapping
--     ["<leader>b"] = "", -- Cancel this new buffer mapping
--   }
-- }
--
-- -- M.tabufline.disabled = {
-- -- n={
-- --     ["<leader>x"] = "", -- Cancel this close buffer mapping
-- --   },
-- -- }
--
-- M.general = {
--   -- Modes
--   --   normal_mode = "n",
--   --   insert_mode = "i",
--   --   visual_mode = "v",
--   --   visual_block_mode = "x",
--   --   term_mode = "t",
--   --   command_mode = "c",
--   n = {
--     [";"] = { ":", "enter command mode", opts = { nowait = true } },
--
--
--     ["<leader>bc"] = {
--       function()
--         require("nvchad_ui.tabufline").close_buffer()
--       end,
--       "close buffer",
--     },
--     ["<leader>bn"] = { "<cmd> enew <CR>", "new buffer" },
--     -- Normal --
--     -- Better window navigation - this built-in to nvchad
--     -- ["C-h"] = {"<C-w>h", "Window Navigation"},
--     -- ["<C-j>"] = {"<C-w>j", "Window Navigation"},
--     -- ["<C-k>"] = {"<C-w>k", "Window Navigation"},
--     -- ["<C-l>"] = {"<C-w>l", "Window Navigation"},
--     --
--     -- -- Resize with arrows
--     ["<C-Up>"] = { "<cmd>resize -2<CR>"},
--     ["<C-Down>"] = {"<cmd>resize +2<CR>"},
--     ["<C-Left>"] = {"<cmd>vertical resize -2<CR>"},
--     ["<C-Right>"] = {"<cmd>vertical resize +2<CR>"},
--     --
--     -- -- Navigate buffers
--     ["<S-l>"] = {":bnext<CR>"},
--     ["<S-h>"] = {":bprevious<CR>"},
--
--     -- Yanky
--     ["p"] = { "<Plug>(YankyPutAfter)", desc = "Yanky Put" },
--     ["P"] = { "<Plug>(YankyPutBefore)", desc = "Yanky Put Before" },
--     ["gp"] = { "<Plug>(YankyPutAfter)", desc = "Yanky Put" },
--     ["gP"] = { "<Plug>(YankyPutBefore)", desc = "Yanky Put Before" },
--
--
--     ["<C-n>"] = { "<Plug>(YankyCycleForward)", desc = "YankyCycleForward" },
--     ["<C-p>"] = { "<Plug>(YankyCycleBackward)", desc = "YankyCycleBackward" },
--     ["<leader>e"] = {
--         function()
--             require("ranger-nvim").open()
--         end,
--         "Ranger",
--     },
--   },
--   t = {
--   },
--   x = {
--     ["p"] = { "<Plug>(YankyPutAfter)", desc = "Yanky Put" },
--     ["P"] = { "<Plug>(YankyPutBefore)", desc = "Yanky Put Before" },
--     ["gp"] = { "<Plug>(YankyPutAfter)", desc = "Yanky Put" },
--     ["gP"] = { "<Plug>(YankyPutBefore)", desc = "Yanky Put Before" },
--   },
--   v= {
--     -- Stay in visual_mode after shift operation
--     [">"] = {">gv", opts = {silent=true}},
--     ["<"] = {"<gv", opts = {silent=true}},
--   },
--
-- }
-- -- ERROR if this is included
-- -- M.tabufline = {
-- --     -- close buffer + hide terminal buffer
-- --     ["<leader>bd"] = {
-- --       function()
-- --         require("nvchad_ui.tabufline").close_buffer()
-- --       end,
-- --       "close buffer",
-- --     },
-- --     ["<leader>bn"] = {
-- --       function()
-- --         require("nvchad_ui.tabufline").new_buffer()
-- --       end,
-- --       "close buffer",
-- --     },
-- -- }
-- --
--
-- -- more keybinds!
-- -- M.nvimtree = {
-- --   n = {
-- --     -- toggle
-- -- --    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
-- --
-- --     -- focus
-- --     -- ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "focus nvimtree" },
-- --     ["<leader>e"] = { "<cmd> NvimTreeToggle<CR>", "Toggle nvimtree" },
-- --   },
-- -- }
--
-- M.nvterm = {
--   plugin = true,
--
--   t = {
--     -- toggle in terminal mode
--     ["<M-1>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "toggle horizontal term",
--     },
--
--     ["<M-2>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "toggle vertical term",
--     },
--
--     ["<M-3>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--   },
--
--   n = {
--     -- toggle in normal mode
--     ["<M-1>"] = {
--       function()
--         require("nvterm.terminal").toggle "horizontal"
--       end,
--       "toggle horizontal term",
--     },
--
--     ["<M-2>"] = {
--       function()
--         require("nvterm.terminal").toggle "vertical"
--       end,
--       "toggle vertical term",
--     },
--
--     ["<M-3>"] = {
--       function()
--         require("nvterm.terminal").toggle "float"
--       end,
--       "toggle floating term",
--     },
--
--     -- new
--     ["<leader>h"] = {
--       function()
--         require("nvterm.terminal").new "horizontal"
--       end,
--       "new horizontal term",
--     },
--
--     ["<leader>v"] = {
--       function()
--         require("nvterm.terminal").new "vertical"
--       end,
--       "new vertical term",
--     },
--   },
-- }
-- return M
--
