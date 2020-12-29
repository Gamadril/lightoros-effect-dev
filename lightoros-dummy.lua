require 'love.timer'

local effect, v_width, v_height, effect_args = ...

local channel = love.thread.getChannel("engine")

api = {}
screen = {}
args = effect_args
screen.width = v_width
screen.height = v_height

api.isStopRequested = function()
    return false
end

api.setScreen = function(screen)
    channel:push(screen)
end

api.sleep = function(ms)
    love.timer.sleep(ms / 1000)
end

require("effects/" .. effect)
