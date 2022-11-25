local cmds = {}
local player = game.Players.LocalPlayer

cmds["respawn"] = function(args)
  origin_spot = player.Character.HumanoidRootPart.CFrame
  player.Character.Humanoid.Health = 0
  wait(7.5)
  player.Character.HumanoidRootPart.CFrame = origin_spot
 end

cmds["freeze"] = function(args)
  player.Character.HumanoidRootPart.Anchored = true
 end

cmds["unfreeze"] = function(args)
  player.Character.HumanoidRootPart.Anchored = false
 end

cmds["chat"] = function(args)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Agony ON TOP!","All")
  else
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(args[1] .. " " .. args[2] .. " " .. args[3] .. " " .. args[4] .. " " .. args[5] .. " " .. args[6] .. " " .. args[7],  "All")
  end
end

cmds["tp"] = function(args)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please input CFrame to teleport to.","All")
  else
       local split_cframe = string.split(args[1],",")
       local x,y,z = split_cframe[1],split_cframe[2],split_cframe[3]
       game.Players:GetPlayerByUserId(v).Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
  end
end

cmds["tpf"] = function(args)
    if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please input CFrame to teleport to.","All")
  else
       local split_cframe = string.split(args[1],",")
       local x,y,z = split_cframe[1],split_cframe[2],split_cframe[3]
       player.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
       player.Character.HumanoidRootPart.Anchored = true
  end
end

_G.AgonyCommands = cmds
