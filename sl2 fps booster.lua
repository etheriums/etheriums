--[[
sl2 fps booster + useless noise remover
]]

if game.PlaceId == 4779613061 then
    
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.Players.LocalPlayer.Character ~= nil
    
local lighting = game.Lighting
local ss = game.SoundService

for _,v in pairs(lighting:GetChildren()) do
    if v.Name ~= "night" and v.ClassName ~= "Shirt" and v.ClassName ~= "Pants" then
        v:Destroy()
    end
end

for _,v in pairs(ss:GetChildren()) do
    if v:IsA("Sound") and v.Name == "Traffic City Noises" then
        v:Destroy()
    end
end

game.StreamingEnabled = true
end
