require("config")

local lightoros_engine_thread
local screen
local lightoros_engine_channel

local screen_width, screen_height, flags = love.window.getMode()
local dot_w = screen_width / v_width
local dot_h = screen_height / v_height

function love.load()
    lightoros_engine_thread = love.thread.newThread("lightoros-dummy.lua")
    lightoros_engine_channel = love.thread.getChannel("engine")
    lightoros_engine_thread:start(effect, v_width, v_height, args)
end

love.draw = function()
    local new_screen = lightoros_engine_channel:pop()

    if new_screen then
        screen = new_screen
    end

    if screen then
        for x = 1, v_width do
            for y = 1, v_height do
                dot = screen[x][y]
                love.graphics.setColor(dot[1] / 255, dot[2] / 255, dot[3] / 255, 1)
                love.graphics.rectangle("fill", (x - 1) * dot_w, (y - 1) * dot_h, dot_w, dot_h)
            end
        end
    end
end
