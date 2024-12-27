return {
  {
    "tadmccorkle/markdown.nvim",
    ft = "markdown", -- or 'event = "VeryLazy"'
    opts = {
      -- configuration here or empty for defaults
      -- Disable all keymaps by setting mappings field to 'false'.
      -- Selectively disable keymaps by setting corresponding field to 'false'.
      mappings = {
        inline_surround_toggle = "gs",   -- (string|boolean) toggle inline style
        inline_surround_toggle_line = "gss", -- (string|boolean) line-wise toggle inline style
        inline_surround_delete = "ds",   -- (string|boolean) delete emphasis surrounding cursor
        inline_surround_change = "cs",   -- (string|boolean) change emphasis surrounding cursor
        link_add = "gl",                 -- (string|boolean) add link
        link_follow = "gx",              -- (string|boolean) follow link
        go_curr_heading = "]c",          -- (string|boolean) set cursor to current section heading
        go_parent_heading = "]p",        -- (string|boolean) set cursor to parent section heading
        go_next_heading = "]]",          -- (string|boolean) set cursor to next section heading
        go_prev_heading = "[[",          -- (string|boolean) set cursor to previous section heading
      },
      inline_surround = {
        -- For the emphasis, strong, strikethrough, and code fields:
        -- * 'key': used to specify an inline style in toggle, delete, and change operations
        -- * 'txt': text inserted when toggling or changing to the corresponding inline style
        emphasis = {
          key = "i",
          txt = "*",
        },
        strong = {
          key = "b",
          txt = "**",
        },
        strikethrough = {
          key = "s",
          txt = "~~",
        },
        code = {
          key = "c",
          txt = "`",
        },
      },
      link = {
        paste = {
          enable = true, -- whether to convert URLs to links on paste
        },
      },
    },
  }
}
