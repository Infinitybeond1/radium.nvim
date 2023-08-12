local M = {}

local function get_radium()
  return {
    background = "#161B20",
    contrast = '#24292E',
    statusline_bg = '#24292E',
    lighter = '#515C68',
    foreground = "#D4D4D5",
    cursorline = '#161b20',
    comments = '#515C68',
    cursor = "#EEFFFF",
    color0  = '#181C24',
    color1  = '#F87070',
    color2  = '#79DCAA',
    color3  = '#FFE59E',
    color4  = '#7AB0DF',
    color5  = '#C397D8',
    color6  = '#70C0BA',
    color7  = '#D4D4D5',
    color8  = '#1C2228',
    color9  = '#FB7373',
    color10 = '#36C692',
    color11 = '#FCCF67',
    color12 = '#5FB0FC',
    color13 = '#B77EE0',
    color14 = '#54CED6',
    color15 = '#FFFFFF',
  }
end

function M.get_colors(style)
   if vim.o.background == 'dark' then
      if style == 'dark' then
         return get_radium()
      elseif style == 'decayce' then
         return get_radium()
      else
         return get_radium()
      end
   else
      return get_radium()
   end
end

return M
