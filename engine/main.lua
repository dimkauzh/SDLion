local sdl = require "SDL"

local event = sdl.event
local is_running = true

local destroy_all = {}

local function create_window(title, width, height, flags)
    if flags == "resizable" then
        flags = sdl.window.Resizable
    end
    
    return sdl.createWindow{
        title   = title,
        width   = width,
        height  = height,
        flags   = { flags }
    }
end

local function createRenderer(win, x, y)
    return sdl.createRenderer(win, x, y)
end

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

local function newRectangle(win, rdr, color, x, y, w, h)

    if color == "red" then
        rdr:setDrawColor(0xFFFFFF)
    else
        rdr:setDrawColor(0xFFFFFF)
    end

    rdr:drawRect({x = x, y = y, w = w, h = h})
    rdr:present()
end


local function quit()
    sdl.quit()
end

return {
    create_window = create_window,
    event = event,
    init_all = init_all,
    is_running = is_running,
    quit = quit,
    pollEvent = pollEvent,
    newRectangle = newRectangle,
    sdl = sdl,
    createRenderer = createRenderer
}
