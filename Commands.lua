---------------------------------------------------------------

local cmds = {}
local player = game.Players.LocalPlayer

---------------------------------------------------------------

wallet = false
dropping = false
blocking = false

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
     local str = ""
     for i = 1,50 do
      if(args[i] ~= nil) then str = str .. " " .. args[i] end
     end
  
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str,  "All")
  end
end

cmds["tp"] = function(args, p)
  if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Please input place to teleport to.","All")
  else
       game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Teleporting to '" .. args[1] .. "'!","All")
       if(string.lower(args[1]) == "bank") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-437.125885, 38.9783134, -285.587372, 0.0165725499, 5.298579e-08, -0.99986279, 1.16139711e-08, 1, 5.31855591e-08, 0.99986279, -1.24937944e-08, 0.0165725499) end
       if(string.lower(args[1]) == "admin") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012) end
       if(string.lower(args[1]) == "lava") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012) end
       if(string.lower(args[1]) == "safezone1") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-117.270287, -58.7000618, 146.536087, 0.999873519, 5.21876942e-08, -0.0159031227, -5.22713037e-08, 1, -4.84179008e-09, 0.0159031227, 5.67245495e-09, 0.999873519) end
       if(string.lower(args[1]) == "safezone2") then player.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085, 38.25, 200014.953, 0.507315397, 0, -0.861760437, 0, 1, 0, 0.861760437, 0, 0.507315397) end
       if(string.lower(args[1]) == "station") then player.Character.HumanoidRootPart.CFrame = CFrame.new(591.680725, 49.0000458, -256.818298, -0.0874911696, -3.41755495e-08, -0.996165276, 1.23318324e-08, 1, -3.53901868e-08, 0.996165276, -1.53808717e-08, -0.0874911696) end
       if(string.lower(args[1]) == "taco") then player.Character.HumanoidRootPart.CFrame = CFrame.new(583.931641, 51.061409, -476.954193, -0.999745369, 1.49123665e-08, -0.0225663595, 1.44838328e-08, 1, 1.91533687e-08, 0.0225663595, 1.88216429e-08, -0.999745369) end
  end
end

cmds["tpf"] = function(args, p)
    if(args[1] == "" or args[1] == nil) then
     game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Please input place to teleport to.","All")
  else
       game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Teleporting to '" .. args[1] .. "'!","All")
       if(string.lower(args[1]) == "bank") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-437.125885, 38.9783134, -285.587372, 0.0165725499, 5.298579e-08, -0.99986279, 1.16139711e-08, 1, 5.31855591e-08, 0.99986279, -1.24937944e-08, 0.0165725499) end
       if(string.lower(args[1]) == "admin") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012) end
       if(string.lower(args[1]) == "lava") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-796.256897, -39.6492004, -886.306152, -0.39699012, 2.91068263e-05, 0.917822897, 1.63490836e-06, 1, -3.10057476e-05, -0.917822897, -1.08084187e-05, -0.39699012) end
       if(string.lower(args[1]) == "safezone1") then player.Character.HumanoidRootPart.CFrame = CFrame.new(-117.270287, -58.7000618, 146.536087, 0.999873519, 5.21876942e-08, -0.0159031227, -5.22713037e-08, 1, -4.84179008e-09, 0.0159031227, 5.67245495e-09, 0.999873519) end
       if(string.lower(args[1]) == "safezone2") then player.Character.HumanoidRootPart.CFrame = CFrame.new(207.48085, 38.25, 200014.953, 0.507315397, 0, -0.861760437, 0, 1, 0, 0.861760437, 0, 0.507315397) end
       if(string.lower(args[1]) == "station") then player.Character.HumanoidRootPart.CFrame = CFrame.new(591.680725, 49.0000458, -256.818298, -0.0874911696, -3.41755495e-08, -0.996165276, 1.23318324e-08, 1, -3.53901868e-08, 0.996165276, -1.53808717e-08, -0.0874911696) end
       if(string.lower(args[1]) == "taco") then player.Character.HumanoidRootPart.CFrame = CFrame.new(583.931641, 51.061409, -476.954193, -0.999745369, 1.49123665e-08, -0.0225663595, 1.44838328e-08, 1, 1.91533687e-08, 0.0225663595, 1.88216429e-08, -0.999745369) end
       wait(0.3)
       player.Character.HumanoidRootPart.Anchored = true
  end
end

cmds["start"] = function(args, p)
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Started Dropping!","All")
  dropping = true
  repeat
    game.ReplicatedStorage.MainEvent:FireServer("DropMoney", 10000)
    wait(0.3)
  until dropping == false
end

cmds["stop"] = function(args, p)
  dropping = false
  game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Stopped dropping!","All")
end

cmds["goto"] = function(args, p)
  if(args[1] == "" or args[1] == nil) then
    player.Character.HumanoidRootPart.CFrame = game.Workspace:FindFirstChild(p.Name).HumanoidRootPart.CFrame
  else
    if(game.Workspace:FindFirstChild(args[1]) == nil) then
      game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("[AGONY] Character doesnt exist.","All")
    else
      player.Character.HumanoidRootPart.CFrame = game.Workspace:FindFirstChild(args[1]).HumanoidRootPart.CFrame
    end
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
    wallet = true
  else
    game.Players.LocalPlayer.Character.Humanoid:UnequipTools(game.Players.LocalPlayer.Character:FindFirstChild("Wallet"))
    wallet = false
  end
end

cmds["crash"] = function(args, p)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/diz-zzyy/AgonyDropper/main/Crasher.lua"))()
end

---------------------------------------------------------------

_G.AgonyCommands = cmds

---------------------------------------------------------------
