return {
  "HiPhish/rainbow-delimiters.nvim",
  event = "BufReadPre",
  config = function()
    require("rainbow-delimiters.setup").setup {
      highlight = {
        "RainbowDelimiterRed",
        "RainbowDelimiterYellow",
        "RainbowDelimiterBlue",
        "RainbowDelimiterOrange",
        "RainbowDelimiterGreen",
        "RainbowDelimiterViolet",
        "RainbowDelimiterCyan",
      },
    }
  end,
}
