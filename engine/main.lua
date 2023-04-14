local sdl = require "SDL"
local window = require "engine.window"

local event = sdl.event
local is_running = true

local destroy_all = {}


local function init_all()
    sdl.init{
        sdl.flags.Video,
        sdl.flags.Audio,
        sdl.flags.Renderer,
    }
end

local function pollEvent()
    return sdl.pollEvent()
end

local function quit()
    sdl.quit()
end

return {
    window = window,
    event = event,
    init_all = init_all,
    is_running = is_running,
    quit = quit,
    pollEvent = pollEvent,
    sdl = sdl
}
