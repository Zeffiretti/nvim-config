-- local api = vim.api
-- local keymap = vim.keymap
-- local dashboard = require("dashboard")

-- dashboard.custom_header = {
--   "                                                       ",
--   "                                                       ",
--   "                                                       ",
--   " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
--   " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
--   " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
--   " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
--   " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
--   " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
--   "                                                       ",
--   "                                                       ",
--   "                                                       ",
--   -- "       _   _      _ _ _              __  ___           ",
--   -- "      | | | | ___| | (_) ___  _ __   \ \/ (_) ___      ",
--   -- "      | |_| |/ _ \ | | |/ _ \| '_ \   \  /| |/ _ \     ",
--   -- "      |  _  |  __/ | | | (_) | | | |  /  \| |  __/     ",
--   -- "      |_| |_|\___|_|_|_|\___/|_| |_| /_/\_\_|\___|     ",
-- }

-- dashboard.custom_center = {
--   {
--     icon = "  ",
--     desc = "Recent Projects                         ",
--     action = "Telescope projects",
--     shortcut = "<Leader> m  ",
--   },
--   {
--     icon = "  ",
--     desc = "Find  File                              ",
--     action = "Leaderf file --popup",
--     shortcut = "<Leader> f f",
--   },
--   {
--     icon = "  ",
--     desc = "Recently opened files                   ",
--     action = "Leaderf mru --popup",
--     shortcut = "<Leader> f r",
--   },
--   {
--     icon = "  ",
--     desc = "Project grep                            ",
--     action = "Leaderf rg --popup",
--     shortcut = "<Leader> f g",
--   },
--   {
--     icon = "  ",
--     desc = "Open Nvim config                        ",
--     action = "tabnew $MYVIMRC | tcd %:p:h",
--     shortcut = "<Leader> e v",
--   },
--   {
--     icon = "  ",
--     desc = "New file                                ",
--     action = "enew",
--     shortcut = "e           ",
--   },
--   {
--     icon = "  ",
--     desc = "Quit Nvim                               ",
--     -- desc = "Quit Nvim                               ",
--     action = "qa",
--     shortcut = "q           ",
--   },
-- }

-- api.nvim_create_autocmd("FileType", {
--   pattern = "dashboard",
--   group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
--   callback = function ()
--     keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
--     keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
--   end
-- })
local api = vim.api
local keymap = vim.keymap
local dashboard = require("dashboard")

local conf = {}
conf.header = {
  -- "                                                       ",
  -- "                                                       ",
  -- "                                                       ",
  -- " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
  -- " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
  -- " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
  -- " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
  -- " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
  -- " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
  -- "                                                       ",
  -- "                                                       ",
  -- "                                                       ",
  -- "                                                       ",
  "                                                 ",
  "                                                 ",
  "                                                 ",
  " ██╗    ██╗  ██╗  ███████╗  ███████╗  ██╗    ██╗ ",
  " ██║    ██║  ██║  ██╔════╝  ██════█║  ██║    ██║ ",
  " █████████║  ██║  █████╗    ╚═███╗╚╝  █████████║ ",
  " ██╔════██║  ██║  ██╔══╝    █╗╚══██╗  ██╔════██║ ",
  " ██║    ██║  ██║  ███████╗  ███████║  ██║    ██║ ",
  " ╚═╝    ╚═╝  ╚═╝  ╚══════╝  ╚══════╝  ╚═╝    ╚═╝ ",
  "                                                 ",
  "                                                 ",
  "                                                 ",
  " █████████╗  ███████╗  ███████╗  ███████╗  ██╗   █████╗   ███████╗  ████████╗  ████████╗  ██╗",
  " ╚════███╔╝  ██╔════╝  ██╔════╝  ██╔════╝  ██║  ██╔══██╗  ██╔════╝     ██╔══╝     ██╔══╝  ██║",
  "    ███╔═╝   █████╗    █████╗    █████╗    ██║  ██████╔╝  █████╗       ██║        ██║     ██║",
  "  ███╔═╝     ██╔══╝    ██╔══╝    ██╔══╝    ██║  ██╔██╔╝   ██╔══╝       ██║        ██║     ██║",
  " █████████╗  ███████╗  ██║       ██║       ██║  ██║╚═██╗  ███████╗     ██║        ██║     ██║",
  " ╚════════╝  ╚══════╝  ╚═╝       ╚═╝       ╚═╝  ╚═╝  ╚═╝  ╚══════╝     ╚═╝        ╚═╝     ╚═╝",
  "                                                 ",
  "                                                 ",
  "                                                 ",
  "                                                 ",
}

conf.center = {
  {
    icon = "󰈞  ",
    desc = "Find  File                              ",
    action = "Leaderf file --popup",
    key = "<Leader> f f",
  },
  {
    icon = "󰈢  ",
    desc = "Recently opened files                   ",
    action = "Leaderf mru --popup",
    key = "<Leader> f r",
  },
  {
    icon = "󰈬  ",
    desc = "Project grep                            ",
    action = "Leaderf rg --popup",
    key = "<Leader> f g",
  },
  {
    icon = "  ",
    desc = "Open Nvim config                        ",
    action = "tabnew $MYVIMRC | tcd %:p:h",
    key = "<Leader> e v",
  },
  {
    icon = "  ",
    desc = "New file                                ",
    action = "enew",
    key = "e",
  },
  {
    icon = "󰗼  ",
    desc = "Quit Nvim                               ",
    -- desc = "Quit Nvim                               ",
    action = "qa",
    key = "q",
  },
}

dashboard.setup({
  theme = 'doom',
  shortcut_type = 'number',
  config = conf
})

api.nvim_create_autocmd("FileType", {
  pattern = "dashboard",
  group = api.nvim_create_augroup("dashboard_enter", { clear = true }),
  callback = function ()
    keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
    keymap.set("n", "e", ":enew<CR>", { buffer = true, silent = true })
  end
})
