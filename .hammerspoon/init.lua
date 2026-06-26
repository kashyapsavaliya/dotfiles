-- Lots of config stolen from caarlos0

local hotkey = require("hs.hotkey")

-- hyper key
local hyper = { "cmd", "ctrl" }

-- disable anymations
hs.window.animationDuration = 0

hotkey.bind(hyper, "`", function()
  hs.reload()
end)

local function appCycler(apps)
  local index = 1
  return function()
    local frontApp = hs.application.frontmostApplication()
    local frontName = frontApp and frontApp:name() or ""
    local inList = false
    for _, app in ipairs(apps) do
      if frontName == app then
        inList = true
        break
      end
    end
    if not inList then
      index = 1
    elseif frontName == apps[index] then
      index = (index % #apps) + 1
    end
    hs.application.launchOrFocus(apps[index])
  end
end

local function launchOrFocus(app)
  return function()
    hs.application.launchOrFocus(app)
  end
end

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

hotkey.bind(hyper, "J", launchOrFocus("Ghostty"))
hotkey.bind(hyper, "U", appCycler({ "Mail" }))
hotkey.bind(hyper, "I", appCycler({ "Calendar" }))
hotkey.bind(hyper, "K", appCycler({ "Safari" }))
hotkey.bind(hyper, "H", appCycler({ "Notes", "Reminders" }))
