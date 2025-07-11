return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- Basic fold settings
    vim.o.foldcolumn = '1'         -- Show fold column
    vim.o.foldlevel = 99           -- Set high foldlevel
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    -- Keymaps for opening/closing all folds
    vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
    vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
    vim.keymap.set('n', 'zK', function()
      local winid = require('ufo').peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = "Peek Fold" })

    -- UFO setup with LSP + indent as providers
    require('ufo').setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { 'lsp', 'indent' }
      end
    })

    -- Add foldingRange capability to LSP
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }

    -- Configure LSP servers (add yours below)
    local lspconfig = require('lspconfig')
    local servers = { 'clangd', 'pyright', 'ts_ls', 'gopls' }
    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
      })
    end
  end,
}

