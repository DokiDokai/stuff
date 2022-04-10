for i,v in pairs(game.Workspace:GetChildren()) do
    if v:IsA("Part") and v.Name == "<3" then
        v:Destroy()
    end
end

game:GetService("Players").LocalPlayer.Idled:connect(function()
   game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

-----------------------------------


local FarmBase = Instance.new("Part")

FarmBase.Name = "<3"
FarmBase.Anchored = true
FarmBase.CanCollide = true
FarmBase.Transparency = 0.5
FarmBase.Parent = game:GetService("Workspace")
FarmBase.Size = Vector3.new(25, 2.8, 25)
FarmBase.Position = Vector3.new(50, 15000, 50)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = FarmBase.CFrame

while _G.OrbFarm == true do
    wait()
    for i,v in pairs(game:GetService("Workspace").Orbs:GetChildren()) do
        if v:IsA("Part") then
            v.CanCollide = false
            v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        end
    end
end
