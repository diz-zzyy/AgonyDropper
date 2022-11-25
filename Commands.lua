---------------------------------------------------------------

local cmds = {}
local player = game.Players.LocalPlayer

---------------------------------------------------------------

wallet = false
dropping = false

---------------------------------------------------------------

cmds["respawn"] = function(args, p)
  origin_spot = player.Character.HumanoidRootPart.CFrame
  player.Character.Humanoid.Health = 0
  wait(7.5)
  player.Character.HumanoidRootPart.CFrame = origin_spot
 end

cmds["freeze"] = function(args, p)
    player.Character.HumanoidRootPart.Anchored = not player.Character.HumanoidRootPart.Anchored
end

cmds["chat"] = function(args, p)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Agony ON TOP!","All")
  else
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(args[1] .. " " .. args[2] .. " " .. args[3] .. " " .. args[4] .. " " .. args[5] .. " " .. args[6] .. " " .. args[7],  "All")
  end
end

cmds["tp"] = function(args, p)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please input CFrame to teleport to.","All")
  else
       local split_cframe = string.split(args[1],",")
       local x,y,z = split_cframe[1],split_cframe[2],split_cframe[3]
       game.Players:GetPlayerByUserId(v).Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
  end
end

cmds["tpf"] = function(args, p)
    if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Please input CFrame to teleport to.","All")
  else
       local split_cframe = string.split(args[1],",")
       local x,y,z = split_cframe[1],split_cframe[2],split_cframe[3]
       player.Character.HumanoidRootPart.CFrame = CFrame.new(x,y,z)
       player.Character.HumanoidRootPart.Anchored = true
  end
end

cmds["start"] = function(args, p)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Started Dropping!","All")
  repeat
    game.ReplicatedStorage.MainEvent:FireServer("DropMoney", 10000)
    wait(0.3)
  until dropping == false
end

cmds["stop"] = function(args, p)
  dropping = false
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Stopped dropping!","All")
end

cmds["bring"] = function(args, p)
  if(args[1] == "" or args[1] == nil) then
    player.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame
  else
    player.Character.HumanoidRootPart.CFrame = game.Players[args[1]].Character.HumanoidRootPart.CFrame
  end
end

cmds["rejoin"] = function(args, p)
  local tpservice= game:GetService("TeleportService")
  local plr = game.Players.LocalPlayer

  tpservice:Teleport(game.PlaceId, plr)
end

cmds["wallet"] = function(args, p)
  if(wallet == false) then
    game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Wallet"))
  else
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game.Players.LocalPlayer.Character:FindFirstChild("Wallet"))
  end
end

---------------------------------------------------------------

_G.AgonyCommands = cmds

---------------------------------------------------------------
