local hotkey = require("hs.hotkey")

-- hyper key
local hyper = { "cmd", "ctrl" }

-- disable anymations
hs.window.animationDuration = 0

hotkey.bind(hyper, "`", function()
  hs.reload()
end)

hs.alert.show("Config loaded")

-- middle left
hs.hotkey.bind(hyper, "Left", function()
  hs.window.focusedWindow():moveToUnit({ 0, 0, 0.5, 1 })
end)

-- middle right
hs.hotkey.bind(hyper, "Right", function()
  hs.window.focusedWindow():moveToUnit({ 0.5, 0, 0.5, 1 })
end)

-- middle up
hs.hotkey.bind(hyper, "Up", function()
  hs.window.focusedWindow():moveToUnit({ 0, 0, 1, 0.5 })
end)

-- middle down
hs.hotkey.bind(hyper, "Down", function()
  hs.window.focusedWindow():moveToUnit({ 0, 0.5, 1, 0.5 })
end)

hotkey.bind(hyper, ";", function()
  hs.window.focusedWindow():moveToUnit({ 0, 0, 1, 1 })
end)
