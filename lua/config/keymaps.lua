local map = vim.keymap.set

map("n", "<leader>e", function()
  if Snacks and Snacks.picker then
    Snacks.picker.explorer()
  else
    vim.cmd("Lex 30")
  end
end, { desc = "File Explorer" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- Better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>execute 'move .+' . v:count1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>execute 'move .-' . (v:count1 + 1)<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
