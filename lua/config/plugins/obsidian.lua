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
          name = "class",
          path = "~/vaults/class",
        },
      },
      templates = {
        subdir = "templates",
      },
    }
  },
}
