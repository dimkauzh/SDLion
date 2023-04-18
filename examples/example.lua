local engine = require "engine.main"

engine.init_all()

local win = engine.window.create_window("game", 500, 400, "resizable")

local rdr = engine.window.createRenderer(win, -1, 0)
local rdrB = engine.sdl.createRenderer(win, -1, 0)



local is_running = true


while is_running do
    for event in engine.event.pollEvent() do
        if event.type == engine.event.Quit then
            is_running = false
        end
    end

    --rdrB:clear()
    --rdrB:present()
    --engine.window.setBackgroundColor(rdr_background)
    engine.window.newRectangle(rdr, "red", 2, 2, 100, 100)
    rdr:setDrawColor(0x0000ff)
    rdr:clear()
    rdr:present()
end

engine.quit()
