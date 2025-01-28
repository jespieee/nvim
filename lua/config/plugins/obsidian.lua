return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = false,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "cs354",
          path = "~/uwcs/notes/cs354",
        },
        {
          name = "cs536",
          path = "~/uwcs/notes/cs536",
        },
      },
      templates = {
        subdir = "~/uwcs/notes/templates",
      },
      -- Optional, customize how note IDs are generated given an optional title.
      ---@param title string|?
      ---@return string
      note_id_func = function(title)
        -- Use the title directly if provided, otherwise generate a timestamp
        if title ~= nil and title ~= "" then
          return title
        end
        return tostring(os.time())
      end,

      -- Optional, customize how note file names are generated given the ID, target directory, and title.
      ---@param spec { id: string, dir: obsidian.Path, title: string|? }
      ---@return string|obsidian.Path The full path to the new note.
      note_path_func = function(spec)
        -- This is equivalent to the default behavior.
        local cwd = vim.fn.getcwd()
        local cwd_path = require("obsidian").Path:new(cwd)
        local path = cwd_path / tostring(spec.id)
        return path:with_suffix(".md")
      end,
    }
  },
}
