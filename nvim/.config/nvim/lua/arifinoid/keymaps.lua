vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
local keymap = vim.keymap
local default_options = { noremap = true, silent = true }

map("i", "<C-c>", "<Esc>", default_options)

keymap.set("n", "<leader>m", function()
	require("llm").create_llm_md()
end, { desc = "Create llm.md" })

-- keybinds for prompting with groq
keymap.set("n", "<leader>,", function()
	require("llm").prompt({ replace = false, service = "groq" })
end, { desc = "Prompt with groq" })
keymap.set("v", "<leader>,", function()
	require("llm").prompt({ replace = false, service = "groq" })
end, { desc = "Prompt with groq" })
keymap.set("v", "<leader>.", function()
	require("llm").prompt({ replace = true, service = "groq" })
end, { desc = "Prompt while replacing with groq" })

-- keybinds for prompting with openai
keymap.set("n", "<leader>g,", function()
	require("llm").prompt({ replace = false, service = "openai" })
end, { desc = "Prompt with openai" })
keymap.set("v", "<leader>g,", function()
	require("llm").prompt({ replace = false, service = "openai" })
end, { desc = "Prompt with openai" })
keymap.set("v", "<leader>g.", function()
	require("llm").prompt({ replace = true, service = "openai" })
end, { desc = "Prompt while replacing with openai" })

-- keybinds to support vim motions
keymap.set("n", "g,", function()
	require("llm").prompt_operatorfunc({ replace = false, service = "groq" })
end, { desc = "Prompt with groq" })
keymap.set("n", "g.", function()
	require("llm").prompt_operatorfunc({ replace = true, service = "groq" })
end, { desc = "Prompt while replacing with groq" })

-- Move to previous/next
map("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", default_options)
map("n", "<Tab>", "<Cmd>BufferNext<CR>", default_options)
-- Re-order to previous/next
-- map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", default_options)
-- map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", default_options)
-- Goto buffer in position...
map("n", "<C-1>", "<Cmd>BufferGoto 1<CR>", default_options)
map("n", "<C-2>", "<Cmd>BufferGoto 2<CR>", default_options)
map("n", "<C-3>", "<Cmd>BufferGoto 3<CR>", default_options)
map("n", "<C-4>", "<Cmd>BufferGoto 4<CR>", default_options)
map("n", "<C-5>", "<Cmd>BufferGoto 5<CR>", default_options)
map("n", "<C-6>", "<Cmd>BufferGoto 6<CR>", default_options)
map("n", "<C-7>", "<Cmd>BufferGoto 7<CR>", default_options)
map("n", "<C-8>", "<Cmd>BufferGoto 8<CR>", default_options)
map("n", "<C-9>", "<Cmd>BufferGoto 9<CR>", default_options)
map("n", "<C-0>", "<Cmd>BufferLast<CR>", default_options)
-- Pin/unpin buffer
-- map("n", "<C-p>", "<Cmd>BufferPin<CR>", default_options)
-- Close buffer
map("n", "<C-w>", "<Cmd>BufferClose<CR>", default_options)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("x", "<leader>p", '"_dP')

keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '>-2<CR>gv=gv")

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
keymap.set("n", "<leader>v", ":MarkdownPreviewToggle<CR>", { silent = true })

-- keymap.set("n", "<C-v>", ":MarkdownPreviewToggle<CR>")

-- map("n", "<Tab>", ":BufferLineCycleNext<CR>", default_options)
-- map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", default_options)
map("n", "<C-h>", "<C-w>h", default_options)
map("n", "<C-l>", "<C-w>l", default_options)
map("n", "<C-j>", "<C-w>j", default_options)
map("n", "<C-k>", "<C-w>k", default_options)
map("n", "<C-m>", ":Magit<CR>", default_options)
map("n", "ss", ":split<Return><C-w>w", default_options)
map("n", "sv", ":vsplit<Return><C-w>w", default_options)
map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", default_options)
map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", default_options)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", default_options)
map("n", "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", default_options)
map("n", "gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", default_options)

map("n", "<C-J>", "<C-W><C-J>", default_options)
map("n", "<C-H>", "<C-W><C-H>", default_options)
map("n", "<C-K>", "<C-W><C-K>", default_options)
map("n", "<C-L>", "<C-W><C-L>", default_options)
map("n", "<C-b>", ":NvimTreeToggle<CR>", default_options)
map("n", "<Left>", ":vertical resize +1<CR>", default_options)
map("n", "<Right>", ":vertical resize -1<CR>", default_options)
map("n", "<Up>", ":resize -1<CR>", default_options)
map("n", "<Down>", ":resize +1<CR>", default_options)
map("n", "<C-w>", ":bdelete<CR>", default_options)
map("n", "<C-q>", ":bufdo bd<CR>", default_options)
map("n", "<C-s>", ":w<CR>", default_options)
map("n", "<C-p>", ":Telescope find_files<CR>", default_options)
map("n", "<C-f>", ":Telescope live_grep<CR>", default_options)
map("n", "<C-t>", ":tabedit<CR>", default_options)
map("n", "gb", ":Telescope git_branches<CR>", default_options)
map("n", "gc", ":Telescope git_commits<CR>", default_options)
map("n", "gs", ":Telescope git_status<CR>", default_options)
map("n", "<J>", ":m .+1<CR>", default_options)
map("n", "<K>", ":m .-2<CR>", default_options)
map("n", "+", "<C-a>", default_options)
map("n", "-", "<C-x>", default_options)
map("n", "<C-z>", ":set foldmethod=expr<CR>", default_options)
map("n", "<C-x>", ":set foldexpr=nvim_treesitter#foldexpr()<CR>", default_options)
map("n", "<C-a>", "gg<S-v>G", default_options) -- Select all
keymap.set("n", "te", ":tabedit")

-- obsidian
map("n", "<leader>oc", "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>", { desc = "Obsidian toggle checkbox" })
map("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian template" })
map("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
map("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show Obsidian Backlinks" })
map("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show Obsidian Links" })
map("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
map("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Note" })
map("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

-- visual mode
map("v", "<", "<gv", default_options)
map("v", ">", ">gv", default_options)

-- Visual block
map("x", "J", ":move '>+1<CR>gv-gv", default_options)
map("x", "K", ":move '<-2<CR>gv-gv", default_options)

-- Pin/unpin buffer
-- Close buffer
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<S-p>", "<Cmd>BufferPick<CR>", default_options)
-- Sort automatically by...

-- lspsaga keymaps
-- local opts = { noremap = true, silent = true }
-- keymap.set("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
-- keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
-- keymap.set("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
-- keymap.set("n", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
-- keymap.set("n", "gp", "<Cmd>Lspsaga preview_definition<CR>", opts)
-- keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
