-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keys = vim.keymap

local function n(mapping, command, opts)
  keys.set("n", mapping, command, opts)
end

-- local function l(mapping, command, opts)
--   keys.set("n", "<leader>" .. mapping, command, opts)
-- end

local function ll(mapping, command, opts)
  keys.set("n", "<localleader>" .. mapping, command, opts)
end

local function rm(key, modes)
  if type(modes) == "string" then
    keys.del(modes, key)
    return
  end

  local keymapModes = { "n" }

  if modes then
    keymapModes = vim.tbl_extend("force", keymapModes, modes)
  end

  keys.del(keymapModes, key)
end

-- disable defaults
-- -- window movement
rm("<C-h>")
rm("<C-j>")
rm("<C-k>")
rm("<C-l>")
-- -- buffer movement
rm("<S-h>")
rm("<S-l>")

-- vim-tmux-navigator
n("<C-h>", "<cmd>TmuxNavigateLeft<cr>")
n("<C-j>", "<cmd>TmuxNavigateDown<cr>")
n("<C-k>", "<cmd>TmuxNavigateUp<cr>")
n("<C-l>", "<cmd>TmuxNavigateRight<cr>")

-- friendly undo
n("<C-r>", "<NOP>")
n("U", "<C-r>")

-- better ex
n(";", ":")
n(":", ";")

n("=zz", "=ip", { desc = "Format paragraph" })

n("0", "ddp", { desc = "Move line down" })
n(")", "ddkP", { desc = "Move line up" })

-- show 'which-key' at startup if localleader pressed
ll("", '<Cmd>lua require("which-key").show("<localleader>", {mode = "v", auto = true})<CR>')

ll("q", "<cmd>bd<cr>", { desc = "Close current buffer" })

ll("e", "<cmd>e!<cr>", { silent = true, desc = "Restore previous saved changes" })

ll("s", "<cmd>w<cr>", { silent = true, desc = "Save current buffer" })

ll("S", "<cmd>wa<cr>", { silent = true, desc = "Save all buffers" })
