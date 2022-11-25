local config = _G.AgonyDropper

loadstring(game:HttpGet("https://raw.githubusercontent.com/diz-zzyy/AgonyDropper/main/Commands.lua"))()

if game.PlaceId ~= 2788229376 then
    messagebox("You are not in the correct game, please ensure you are in 'Da Hood'.", "Agony", 0)
    error("You are not in the correct game, please ensure you are in 'Da Hood'.")
    return;
end

game:GetService("RunService"):Set3dRenderingEnabled(false)

local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

function Command(player)
    player.Chatted:Connect(function(msg)
        msg = string.lower(msg)
        cmd = string.split(msg," ")
        print(cmd[1])
        if(string.sub(cmd[1],1,1) == config.Prefix) then
            print("Has prefix")
             cmd1 = cmd[1]:gsub(config.Prefix, "")
            if(_G.AgonyCommands[cmd1] ~= nil) then
                print("Has command")
                _G.AgonyCommands[cmd1]({cmd[2], cmd[3], cmd[4], cmd[5], cmd[6], cmd[7], cmd[8], cmd[9], cmd[10], cmd[11]})
            end
        end
    end)
end

game.Players.PlayerAdded:Connect(function(player)
    for _,v in pairs(config.Controllers) do
        if(tostring(player.UserId) == tostring(v)) then
            Command(player)
        end
    end
end)

for _,player in pairs(game.Players:GetPlayers()) do
    for _,v in pairs(config.Controllers) do
       if(tostring(player.UserId) == tostring(v)) then
            Command(player)
        end
    end
end
