local sdl = require "SDL"

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

local function newRectangle(win, rdr, color, x, y, w, h)

    if color == "red" then
        rdr:setDrawColor(0xFFFFFF)
    else
        rdr:setDrawColor(0xFFFFFF)
    end

    rdr:drawRect({x = x, y = y, w = w, h = h})
    rdr:present()
end

local function createRenderer(win, x, y)
    return sdl.createRenderer(win, x, y)
end

return {
    create_window = create_window,
    newRectangle = newRectangle,
    createRenderer = createRenderer
}
