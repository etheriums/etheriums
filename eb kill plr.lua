for _,v in pairs(game:GetChildren()) do
    if v.ClassName == "Workspace" then
        v.Name = "Workspace"
    end
    if v.ClassName == "Players" then
        v.Name = "Players"
    end
end

wait(1)

local lp = game.Players.LocalPlayer
local char = lp.Character
local human = char.Humanoid
local hrp = char.HumanoidRootPart

local function attach(plr, tool)
    local targetchar = game.Players[plr].Character
    local targethrp = targetchar.HumanoidRootPart
    human.Name = "fake"
    local newhuman = human:Clone()
    newhuman.Parent = char
    newhuman.Name = "Humanoid"
    wait()
    human:Destroy()
    workspace.CurrentCamera.CameraSubject = char
    local tool = lp.Backpack:FindFirstChild(tool)
    tool.Parent = char
    hrp.CFrame = targethrp.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
    repeat
        wait(0.1)
        hrp.CFrame = targethrp.CFrame
        until tool.Parent ~= char
end

wait(1)

attach("mi113r2006", "TinyPhone")
wait(1.5)
local bf = Instance.new("BodyForce")
bf.Parent = hrp
bf.Force = Vector3.new(4040404,4040404,4040404)
