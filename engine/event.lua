local sdl = require "SDL"

local Quit = sdl.event.Quit

local function pollEvent()
    return sdl.pollEvent()
end

return {
    pollEvent = pollEvent,
    Quit = Quit,
    sdl = sdl,
}