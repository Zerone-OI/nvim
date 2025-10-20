return {
  "saghen/blink.cmp",
  opts = {
    cmdline = {
      completion = {
        menu = {
          auto_show = true,
        },
      },
    },
    appearance = { -- 使用 VSCode 风格的图标和高亮
      use_nvim_cmp_as_default = false,
      nerd_font_variant = "mono",
      kind_icons = {
        Text = "󰉿",
        Method = "󰊕",
        Function = "󰊕",
        Constructor = "󰒓",
        Field = "󰜢",
        Variable = "󰆦",
        Class = "󰠱",
        Interface = "󰒪",
        Module = "󰆧",
        Property = "󰖷",
        Unit = "󱉸",
        Value = "󰦨",
        Enum = "󰦨",
        Keyword = "󰻾",
        Snippet = "󱄽",
        Color = "󰏘",
        File = "󰈔",
        Reference = "󰬲",
        Folder = "󰉋",
        EnumMember = "󰦨",
        Constant = "󰏿",
        Struct = "󰆼",
        Event = "󱐋",
        Operator = "󰪚",
        TypeParameter = "�#",
      },
    },
    completion = {
      menu = {
        -- VSCode 风格的边框
        -- border = "rounded",
        -- 移除 Normal 的映射,让背景透明
        winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None",
        -- 绘制配置

        draw = {
          columns = {
            { "kind_icon", gap = 1 },
            { "label", "label_description", gap = 1 },
          },
          components = {
            kind_icon = {
              text = function(ctx) return ctx.kind_icon end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = {
          winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,Search:None",
        },
      },
    },
  },
}
