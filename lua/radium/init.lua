local M = {}
local core = require('radium.core')
local highlights = require('radium.highlights')

function M.setup (opts)
  if opts == nil then
    opts = {
      style = 'normal',
      cmp = {
        block_kind = true,
      },
      italics = {
        code = true,
        comments = false
      }
    }
  end
  -- disable bold
  vim.cmd [[ set t_md= ]]
  vim.opt.termguicolors = true
  vim.g.radium_style = opts.style

  local cmp_opts = opts.cmp or { block_kind = true }

  vim.g.radium_cmp_block_kind = cmp_opts.block_kind == nil and true or cmp_opts.block_kind

  local colors = core.get_colors(opts.style) -- getting the right palette

  highlights.highlight_all(colors, opts)
end

return M
