local engine = require "engine.main"

engine.init_all()

local win = engine.window.create_window("game", 500, 400, "resizable")

local rdr = engine.window.createRenderer(win, -1, 0)


local is_running = true


while is_running do
    for event in engine.pollEvent() do
        if event.type == engine.event.Quit then
            is_running = false
        end
    end
    
    engine.window.newRectangle(win, rdr, "red", 2, 2, 100, 100)
end

engine.quit()
