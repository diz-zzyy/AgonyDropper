for _, v in ipairs(workspace:GetDescendants()) do
    if v:IsA("Seat") or v:IsA("VehicleSeat") then
        v.Disabled = true
    end
end
