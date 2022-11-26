local UIS = game:GetService("UserInputService")

local BhopInfo = {
    CurrentVel = 0, -- DONT TOUCH
    VelCap = 3,
    JumpBoostAmt = 0.1
}

local RolvePatch = false -- CHANGE false to true IF YOU WANT TO USE THIS ON ROLVE GAMES (CB:RO ARSENAL)

local helper = {
    getChar = function()
        return game.Players.LocalPlayer.Character
    end
}

local function checkOnGround(char)
    local ray = Ray.new(char.HumanoidRootPart.Position,-(char.HumanoidRootPart.CFrame.UpVector * 100))
    local part, pos = workspace:FindPartOnRay(ray,char)
    
    if part then
        if pos then
            local farness = math.ceil((char.HumanoidRootPart.Position - pos).Magnitude)
            if farness > 3 then    -- works with normal blocky r15 avatars.. sooo :l
                return false
            elseif farness <= 3 then
                return true
            end
        end
    end
end



UIS.JumpRequest:Connect(function()

    if (UIS:IsKeyDown(Enum.KeyCode.W) == false) and (UIS:IsKeyDown(Enum.KeyCode.A) or UIS:IsKeyDown(Enum.KeyCode.D)) == true and BhopInfo.CurrentVel < BhopInfo.VelCap then
        BhopInfo.CurrentVel = BhopInfo.CurrentVel + BhopInfo.JumpBoostAmt
    end
end)

-- patchs games like restrict jumping honestly really any other game --

local char = helper.getChar()

char.Humanoid.StateChanged:Connect(function(oldstate,newstate)
    if newstate == Enum.HumanoidStateType.Landed then -- if we've landed after we've jumped then allow us to jump again, essentially breaking the jump cooldown
        char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)

        print("resetting jump cd")
    end
end)

----------------------------------------

spawn(function() -- spawn, wait, delay, and Debris are ALL SO BAD. NEVER RELY ON THEM. I am relying on them though because this is a exploit script, not much effort put into it
    while true do
        local char = helper.getChar()
    
        if checkOnGround(char) == false and BhopInfo.CurrentVel ~= 0 then
            char.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + (char.HumanoidRootPart.CFrame.LookVector * BhopInfo.CurrentVel/6)
            print('hopping')
        end

        if UIS:IsKeyDown(Enum.KeyCode.Space) == false then
            BhopInfo.CurrentVel = 0
        elseif UIS:IsKeyDown(Enum.KeyCode.Space) == true and UIS:IsKeyDown(Enum.KeyCode.W) then
            BhopInfo.CurrentVel = math.clamp(BhopInfo.CurrentVel - 0.01,0,BhopInfo.VelCap)
        elseif UIS:IsKeyDown(Enum.KeyCode.Space) == true then
            if RolvePatch == true then char.Humanoid.Jump = true end -- patches rolve games
        end

        game:GetService("RunService").Stepped:Wait()
    end
