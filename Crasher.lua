if not game:IsLoaded() then game.Loaded:Wait() end

local SwagmodeCrasher = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Title_2 = Instance.new("TextLabel")
local Line = Instance.new("TextLabel")
local Title_3 = Instance.new("TextLabel")
local Title_4 = Instance.new("TextLabel")
local Title_5 = Instance.new("TextLabel")
local Title_6 = Instance.new("TextLabel")

SwagmodeCrasher.Name = "SwagmodeCrasher"
SwagmodeCrasher.Parent = game.CoreGui
SwagmodeCrasher.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = SwagmodeCrasher
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
Main.Position = UDim2.new(0.164674729, 0, 0.50000006, 0)
Main.Size = UDim2.new(0, 274, 0, 398)
Main.Active = true
Main.Draggable = true
Main.BorderSizePixel = 0 


Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0, 0, 0.0626208037, 0)
Title.Size = UDim2.new(0, 274, 0, 50)
Title.Font = Enum.Font.Unknown
Title.Text = "Agony Crasher"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 30.000
Title.TextWrapped = true
Title.TextScaled = true

Title_2.Name = "Title"
Title_2.Parent = Main
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.0547445267, 0, 0.187393025, 0)
Title_2.Size = UDim2.new(0, 244, 0, 16)
Title_2.Font = Enum.Font.Unknown
Title_2.Text = "Powered by Swagmode."
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 30.000
Title_2.TextWrapped = true

Line.Name = "Line"
Line.Parent = Main
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 1.000
Line.Position = UDim2.new(0.127737224, 0, 0.225937337, 0)
Line.Size = UDim2.new(0, 204, 0, 17)
Line.Font = Enum.Font.Unknown
Line.Text = "_____________"
Line.TextColor3 = Color3.fromRGB(255, 255, 255)
Line.TextSize = 30.000
Line.TextWrapped = true

Title_3.Name = "Title"
Title_3.Parent = Main
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.Position = UDim2.new(0.0547445267, 0, 0.335634232, 0)
Title_3.Size = UDim2.new(0, 244, 0, 37)
Title_3.Font = Enum.Font.Unknown
Title_3.Text = "Crasher takes around 30+ Minutes"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextSize = 18.000
Title_3.TextWrapped = true
Title_3.TextScaled = true


Title_4.Name = "Title"
Title_4.Parent = Main
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.Position = UDim2.new(0.0547445267, 0, 0.584377944, 0)
Title_4.Size = UDim2.new(0, 244, 0, 37)
Title_4.Font = Enum.Font.Unknown
Title_4.Text = "You need $100,000 Cash to use"
Title_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_4.TextSize = 18.000
Title_4.TextWrapped = true
Title_4.TextScaled = true


Title_5.Name = "Title"
Title_5.Parent = Main
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.Position = UDim2.new(0.0547445267, 0, 0.68221715, 0)
Title_5.Size = UDim2.new(0, 244, 0, 37)
Title_5.Font = Enum.Font.Unknown
Title_5.Text = "You need to be in a Da Hood Crew"
Title_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_5.TextSize = 18.000
Title_5.TextWrapped = true
Title_5.TextScaled = true


Title_6.Name = "Title"
Title_6.Parent = Main
Title_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_6.BackgroundTransparency = 1.000
Title_6.Position = UDim2.new(0.0547445267, 0, 0.491413087, 0)
Title_6.Size = UDim2.new(0, 244, 0, 37)
Title_6.Font = Enum.Font.Unknown
Title_6.Text = "*Requirements*"
Title_6.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_6.TextSize = 18.000
Title_6.TextWrapped = true

local Player = game.Players.LocalPlayer
function announce(title,text,time)
    game.StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = time;
    })
end
        

function crash()
    if Player.DataFolder.Information:FindFirstChild('Crew') and tonumber(Player.DataFolder.Information.Crew.Value) then
        if Player.DataFolder.Currency.Value >= 80000 then
    
            SwagmodeCrasher:Destroy()
            
            local vu = game:GetService("VirtualUser") -- AntiAfk
                game:GetService("Players").LocalPlayer.Idled:connect(function()
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            end)
            
            
            local function DeleteChar()
                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA('MeshPart') or v:IsA('Part') or v:IsA('Accessory') then
                        v:Destroy()
                    end
                end
                game.Players.LocalPlayer.Character.Name = 'Deleted'
            end
            
            function announce(title,text,time)
                game.StarterGui:SetCore("SendNotification", {
                    Title = title;
                    Text = text;
                    Duration = time;
                })
            end
            
            if not Player.Character then
                Player.CharacterAdded:Wait()
            end
            
            for i,v in pairs(game.Workspace.Ignored.Shop:GetChildren()) do
                if not string.find(v.Name, 'Ammo') and not string.find(v.Name, 'Armor') and not string.find(v.Name, 'Phone') and not string.find(v.Name,'Bike') and not string.find(v.Name, 'Mask') and not string.find(v.Name, 'SG') and not string.find(v.Name,'Moveset') then
                    local Name = string.gsub(string.split(v.Name, '-')[1], ' ', '')
                    local Owned = false
                    if not Player.Character:FindFirstChild(Name) and not Player.Backpack:FindFirstChild(Name) then
                        repeat
                            Player.Character.HumanoidRootPart.CFrame = v.Head.CFrame
                            fireclickdetector(v:FindFirstChildOfClass('ClickDetector'))
                            for i,W in pairs(Player.Backpack:GetChildren()) do
                                if string.gsub(W.Name, ' ', '') == Name then
                                    Owned = true
                                end
                            end
                            task.wait()
                        until Owned == true
                    end
                end
            end
            
            local Count
            
            local ScreenGui = Instance.new("ScreenGui")
            local TextLabel = Instance.new("TextLabel")
            
            ScreenGui.Parent = game.CoreGui
            ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
            
            TextLabel.Parent = ScreenGui
            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel.Position = UDim2.new(0.425278842, 0, 0.265460044, 0)
            TextLabel.Size = UDim2.new(0, 200, 0, 50)
            TextLabel.Font = Enum.Font.SourceSans
            TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextLabel.TextScaled = true
            TextLabel.TextSize = 14.000
            TextLabel.TextWrapped = true
            Player.CharacterAdded:Connect(function()
                ScreenGui:Destroy()
            end)
            
            local Crew = tonumber(Player.DataFolder.Information.Crew.Value)
            repeat
                Player.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").Ignored.Shop["[Flowers] - $5"].Head.Position.X, game:GetService("Workspace").Ignored.Shop["[Flowers] - $5"].Head.Position.Y - 5, game:GetService("Workspace").Ignored.Shop["[Flowers] - $5"].Head.Position.Z)
                fireclickdetector(game:GetService("Workspace").Ignored.Shop["[Flowers] - $5"].ClickDetector)
                Count = 0 
                for i,v in pairs(game:GetService("Workspace").Ignored.ItemsDrop:GetDescendants()) do
                    local s,e = pcall(function()
                        if v:IsA('Tool') then
                            repeat 
                                Player.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Position)  
                                task.wait()
                            until not v
                        end
                    end) if e then print(e) end
                end
                
            
            
                if Crew then
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew",tostring(Crew))
                    for i,v in pairs(Player.Backpack:GetChildren()) do
                        if v:IsA('Tool') and v.Name == '[SprayCan]' then
                            v.Parent = Player.Character
                        end
                    end
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("JoinCrew",tostring(Crew))
                    task.wait()
                    game:GetService("ReplicatedStorage").MainEvent:FireServer("LeaveCrew")
                end
                
                for i,v in pairs(Player.Backpack:GetChildren()) do
                    if v:IsA('Tool') then
                        Count = Count + 1
                    end
                end
                for i,v in pairs(Player.Character:GetChildren()) do
                    if v:IsA('Tool') then
                        Count = Count + 1
                    end   
                end
                TextLabel.Text = 'You have '.. tostring(Count) .. ' items, \n it will crash at 1550 items'
                task.wait()
            until Count >= 1550
            
            wait(1)
            Player.Character.HumanoidRootPart.CFrame = CFrame.new(0,99999999,0)
            wait(3)
            
            for i,v in pairs(Player.Backpack:GetChildren()) do
                if v:IsA('Tool') then
                    v.Parent = Player.Character
                end
            end
                
            local T = 0
            repeat
                for i,v in pairs(Player.Backpack:GetChildren()) do
                    if v:IsA('Tool') then
                        v.Parent = Player.Character
                    end
                end
                T = T + 1
            until T >= 35
            
            DeleteChar()
            
        else
            announce('You need atleast 100k to use this', 'sry :(', 10)
        end
    else
        announce('Please join a DH Crew and try again', '(person button on the bottom left)', 10)
    end
end
