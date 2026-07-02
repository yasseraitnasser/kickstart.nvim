return {
  {
    'L3MON4D3/LuaSnip',
    config = function(_, opts)
      local luaSnip = require 'luasnip'

      local snip = luaSnip.snippet
      local text = luaSnip.text_node
      local insert = luaSnip.insert_node

      luaSnip.add_snippets('go', {
        snip('iferr', {
          text { 'if err != nil {', '\t' },
          text { 'log.Fatal("' },
          insert(1),
          text { '")' },
          text { '', '}' },
        }),
      })

      vim.keymap.set({ 'i', 's' }, '<C-j>', function()
        if luaSnip.expand_or_jumpable() then luaSnip.expand_or_jump() end
      end, { silent = true, desc = 'Snippet expand/jump forward' })
    end,
  },
}
