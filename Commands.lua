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
  player.Character.HumanoidRootPart.Anchored = true
 end

cmds["chat"] = function(args)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Agony OT!","All")
  else
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(args[1],"All")
  end
end

_G.AgonyCommands = cmds
