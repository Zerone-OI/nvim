return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  ---@type CatppuccinOptions
  ---@diagnostic disable: missing-fields
  opts = {
    auto_integrations = true,
    integrations = {
      colorful_winsep = { color = "lavender" },
      snacks = {
        indent_scope_color = "lavender",
      },
      blink_cmp = true,
    },
    custom_highlights = function(colors)
      return {
        -- 使用更亮的文字颜色和与编辑器一致的背景
        Pmenu = { bg = colors.base, fg = colors.text }, -- 背景改为 base，文字改为 text
        PmenuSel = { bg = colors.surface0, fg = colors.text, bold = true },
        PmenuSbar = { bg = colors.surface0 },
        PmenuThumb = { bg = colors.overlay0 },

        -- 也可以直接覆盖 BlinkCmp 相关
        BlinkCmpMenu = { bg = colors.base, fg = colors.text },
        BlinkCmpMenuSelection = { bg = colors.surface0, fg = colors.text, bold = true },
        -- 统一边框颜色
        FloatBorder = { fg = colors.blue, bg = colors.base }, -- 所有浮动窗口边框

        -- blink.cmp 特定边框
        BlinkCmpMenuBorder = { fg = colors.blue, bg = colors.base },
        BlinkCmpDocBorder = { fg = colors.blue, bg = colors.base },

        -- 如果你的 blink 配置中有 signature 窗口
        BlinkCmpSignatureBorder = { fg = colors.blue, bg = colors.base },
      }
    end,
  },
  specs = {
    {
      "akinsho/bufferline.nvim",
      optional = true,
      opts = function(_, opts)
        return require("astrocore").extend_tbl(opts, {
          highlights = require("catppuccin.special.bufferline").get_theme(),
        })
      end,
    },
    {
      "nvim-telescope/telescope.nvim",
      optional = true,
      opts = {
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      },
    },
  },
}
