-- Editor
vim.o.number=true
vim.o.mouse='a'
vim.o.cursorline=true
vim.o.background='dark'
vim.o.wrap=false -- don't wrap long lines
vim.o.expandtab=false
vim.o.splitbelow=true -- automagically h split going down
vim.o.splitright=true -- automagically v split going right
vim.o.fileencoding='utf-8'

-- Indentation
vim.o.tabstop=2
vim.o.shiftwidth=2

-- Search
vim.o.hlsearch=false -- Don't highlight search
vim.o.incsearch=true -- jump incrementally to search results
vim.o.hidden=true -- allow hidden buffers
vim.o.ignorecase=true -- ignore case when searching
vim.o.smartcase=true -- Unless we explicitly use cases in search

-- Files
vim.o.swapfile=false -- don't need no swap files!
vim.o.backup=false -- ... or a backup!
vim.o.undodir='~/.nvim/undodir'  -- sets where undo files land
vim.o.colorcolumn='100'  -- bar at 80 chars width
vim.o.signcolumn='yes' -- always set the far left bar/column

-- Float term
vim.g.floaterm_width=0.95
vim.g.floaterm_height=0.6
