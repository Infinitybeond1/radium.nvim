local core = require('chasm.core')
local colors = core.get_colors(vim.g.decay_style)

local decay = {}

decay.normal = {
  a = { bg = colors.color4, fg = colors.foreground },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

decay.insert = {
  a = { bg = colors.color2, fg = colors.foreground },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

decay.command = {
  a = { bg = colors.color1, fg = colors.foreground },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

decay.visual = {
  a = { bg = colors.color6, fg = colors.foreground },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

decay.replace = {
  a = { bg = colors.color1, fg = colors.foreground },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.foreground },
}

decay.inactive = {
  a = { bg = colors.background, fg = colors.color7 },
  b = { bg = colors.lighter, fg = colors.foreground },
  c = { bg = colors.statusline_bg, fg = colors.statusline_bg },
}

return decay
