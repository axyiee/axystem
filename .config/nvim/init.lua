local nfnl_path = vim.fn.stdpath("data") .. "/lazy/" .. "nfnl"
if not vim.loop.fs_stat(nfnl_path) then
  vim.fn.system { "git", "clone", "https://github.com/Olical/nfnl", nfnl_path }
  vim.cmd "redraw"
end
vim.opt.rtp:prepend(nfnl_path)

require"nfnl".setup()
require"axystem"
