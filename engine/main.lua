local sdl = require "SDL"
local window = require "engine.window"
local event = require "engine.event"

local is_running = true

local function init_all()
    sdl.init{
        sdl.flags.Video,
        sdl.flags.Audio,
        sdl.flags.Renderer,
    }
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
    sdl = sdl,
}
