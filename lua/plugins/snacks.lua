return {
  "folke/snacks.nvim",
  lazy = false,
  opts = {
    -- image 配置
    image = {
      enabled = true,
      filetypes = { "markdown", "html" },
      doc = {
        enabled = true,
        inline = true,
        float = true,
        max_width = 80,
        max_height = 20,
      },
      -- indent 是独立的配置项
      indent = {
        enabled = false,
        animate = { duration = { step = 10, total = 100 } },
        scope = {
          enabled = true,
          char = "┊",
          underline = false,
          only_current = true,
          priority = 1000,
        },
      },
      -- styles 是独立的配置项
      styles = {
        snacks_image = {
          border = "rounded",
          backdrop = false,
        },
      }, -- doc 是独立的配置项
    },
  },
}
