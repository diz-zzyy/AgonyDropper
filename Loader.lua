local config = _G.AgonyDropper

local commands = loadstring()()

if game.PlaceId ~= 2788229376 then
    messagebox("You are not in the correct game, please ensure you are in 'Da Hood'.", "Agony", 0)
    error("You are not in the correct game, please ensure you are in 'Da Hood'.")
    return;
end

local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

game.Players.PlayerAdded:Connect(function(player)
    whitelisted = false
    for _,v in pairs(config.Controllers) do
        if(player.UserId == v) then
            whitelisted = true
        end
    end
    
    player.Chatted:Connect(function(chat)
        msg = string.lower(msg)
        cmd = string.split(msg," ")
        if(string.sub(chat,1,1) == config.prefix) then
            if(commands[cmd[1]] ~= nil) then
                commands[cmd[1]]()
            end
        end
    end)
end)
