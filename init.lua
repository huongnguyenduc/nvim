-- if not pcall(require, "impatient") then
--   print("Failed to load impatient.")
-- end

local g = vim.g

g.do_filetype_lua = 1
g.did_load_filetypes = 0

g.mapleader = " "
g.maplocalleader = " "

-- skip some remote provder loading
-- g.loaded_python_provider = 0

-- Disable some built-in plugins we don't want
local plugins = {
  "gzip",
  "netrw",
  "netrwPlugin",
  "matchparen",
  "tar",
  "tarPlugin",
  "zip",
  "zipPlugin",
  "matchit",
  "man",
  "2html_plugin",
  "tutor_mode_plugin",
}
for i = 1, #plugins do
  g["loaded_" .. plugins[i]] = 1
end

require("mvim.plugins")
