-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'gopls',
  'solargraph',
})

lsp.on_attach(function(client, bufnr)
  -- In this case, we create a function that lets us more easily define mappings specific
  -- for LSP related items. It sets the mode, buffer and description for us each time.
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  local imap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
  end

  local telescope = require('telescope.builtin')

  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap('gd', telescope.lsp_definitions, '[G]oto [D]efinition')
  nmap('gr', telescope.lsp_references, '[G]oto [R]eferences')
  nmap('gi', telescope.lsp_implementations, '[G]oto [I]mplementation')
  nmap('gy', telescope.lsp_type_definitions, '[G]oto T[y]pe definition')
  nmap('<leader>ds', telescope.lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', telescope.lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- See `:help K` for why this keymap
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  imap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- Lesser used LSP functionality
  nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
  nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
  nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
  nmap('<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, '[W]orkspace [L]ist Folders')

  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, { desc = 'Format current buffer with LSP' })
end)

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {
    "*.js",
    "*.jsx",
    "*.json",
    "*.ts",
    "*.tsx",
    "*.lua",
    "*.rs",
    "*.rb"
  },
  callback = function() vim.lsp.buf.format() end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice
  callback = function()
    vim.lsp.start {
      name = "standard",
      cmd = { "/Users/kevin/.asdf/shims/standardrb", "--lsp" },
    }
  end,
})
lsp.setup()

-- Run goimports on a go buffer before save
vim.cmd([[
function! s:GoImports()
  let l:winview = winsaveview()
  execute '!goimports -w %'
  execute 'e'
  call winrestview(l:winview)
endfunction

command! GoImports call s:GoImports()
autocmd BufWritePost *.go silent :GoImports
]])

vim.cmd(
  [[
  function! GoToggle()
  let current_file = expand('%:p')
  if current_file =~ '_test.go$'
    let new_file = substitute(current_file, '_test.go$', '.go', '')
  else
    let new_file = substitute(current_file, '.go$', '_test.go', '')
  endif

  if filereadable(new_file)
    execute 'edit' new_file
  else
    echo "Corresponding file not found: " . new_file
  endif
endfunction
command! GoToggle call GoToggle()
]])

vim.keymap.set('n', "<leader>pt", ":GoToggle<CR>")
