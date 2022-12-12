local setup, alpha = pcall(require, "alpha")
if not setup then
  return
end

local dashboard = require'alpha.themes.dashboard'
dashboard.section.header.val = {
[[              _                     _           ]],
[[__      _____| |__  _ __ ___   __ _| |_ _______ ]],
[[\ \ /\ / / _ \ '_ \| '_ ` _ \ / _` | __|_  / _ \]],
[[ \ V  V /  __/ |_) | | | | | | (_| | |_ / /  __/]],
[[  \_/\_/ \___|_.__/|_| |_| |_|\__,_|\__/___\___|]],
[[             _ ____   _(_)_ __ ___              ]],
[[            | '_ \ \ / / | '_ ` _ \             ]],
[[            | | | \ V /| | | | | | |            ]],
[[            |_| |_|\_/ |_|_| |_| |_|            ]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", '  Find File', ':Telescope find_files<CR>'),
  dashboard.button("r", '  Recents',':Telescope oldfiles<CR>'),
  dashboard.button("n", '洛 New File', ':enew<CR>'),
  dashboard.button("s", '  Search Word', ':Telescope live_grep<CR>' ),
  dashboard.button("q", '  Quit', ':qa!<CR>' ),
}
alpha.setup(dashboard.config)
