local lp = game.Players.LocalPlayer
local char = lp.Character
local hrp = char.HumanoidRootPart

local function getplayers()
    plrs = {}
    for _,v in pairs(game.Players:GetChildren()) do
        if v.Name ~= lp.Name then
            table.insert(plrs, v)
        end
    end
    return plrs
end

for i,v in next, getplayers() do
    repeat
        wait(0.1)
        v.Character.HumanoidRootPart.CFrame = hrp.CFrame * CFrame.new(0,0,-20)
    until v.Character.Humanoid.Health < 10
end
