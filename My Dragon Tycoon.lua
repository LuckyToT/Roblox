while not game:IsLoaded() do
    wait()
end

function getPlayer()
    local player, cha, plr, hum = nil, nil, nil, nil
    while not game.Players.LocalPlayer do
        wait()
    end
    while not game.Players.LocalPlayer.Character do
        wait()
    end
    while not game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart') do
        wait()
    end
    while not game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') do
        wait()
    end
    local player = game.Players.LocalPlayer
    local cha = player.Character
    local hum = cha.Humanoid
    local plr = cha.HumanoidRootPart
    return player, cha, plr, hum
end

if not fireclickdetector then
    return game.Players.LocalPlayer:Kick("Bye ;(")
end

getgenv().autoFarm = false
getgenv().autoHavest = false

_G.selectmob = 'Slime'

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/LuckyToT/Roblox/main/UI/Wally%20UI%20III.lua')))()
local Game = library:CreateWindow("Auto Farm")
local Combat = Game:CreateFolder("Game")

-- UI Setting --

local UI = library:CreateWindow("UI Settings")
local Setting = UI:CreateFolder("Settings")
local Credit = UI:CreateFolder("Credit")
local Update = UI:CreateFolder("Latest Updated")
Setting:GuiSettings()


-- Variabele
local player, cha, plr, hum = getPlayer()
local rs = game:GetService('RunService')

function createPart()
    if not workspace:FindFirstChild('LuckyToT') then
        local plat = Instance.new("Part", workspace)
        plat.Name = 'LuckyToT'
        plat.Transparency = 1
        plat.Size = Vector3.new(math.huge, 1, math.huge)
        plat.Anchored = true
        plat.CFrame = CFrame.new(math.random(1, 9999), math.random(2000, 9999), math.random(1, 9999))
    end
    hum.WalkSpeed = 0
end

function teleport(monster)
    pcall(function()
        monster.CFrame = plr.CFrame * CFrame.new(0, 0, -6)
    end)
end

function autoAttack()
    if not cha:FindFirstChild("Tool") then
        hum:EquipTool(player.Backpack.Tool)
    end
    wait(0.5)
    cha.Tool:Activate()
end

Combat:Dropdown("Select mob",{'Slime', 'Beetle', 'Seedmon', 'Stump', 'Ghost', 'Platypus', 'Golem', 'Armor King', 'Magma'}, true, function(mob)
    _G.selectmob = mob
end)

function bringEnemy()
    local target, distance, closet = nil, nil, math.huge
    for _,i in ipairs(game:GetService("Workspace").Monster.Area:GetChildren()) do
        for _, j in ipairs(i:GetChildren()) do
            for _, k in ipairs(j:GetChildren()) do
                if k:FindFirstChild('Humanoid') and k:FindFirstChild('HumanoidRootPart') then
                    pcall(function()
                        if k.Name == _G.selectmob then
                            local distance = player:DistanceFromCharacter(k.HumanoidRootPart.Position)
                            if  distance < closet then
                                closet = distance
                                target = k
                            end
                        end
                    end)
                end
            end
        end
    end
    return target
end

function AutoFarm()
    createPart()
    cha:MoveTo(workspace.LuckyToT.Position)
    while getgenv().autoFarm do
        local target = bringEnemy()
        createPart()
        if target ~= nil then
            repeat
                local target = bringEnemy()
                teleport(target.HumanoidRootPart)
                wait()
                spawn(autoAttack)
            until target == nil or not target:FindFirstChild('HumanoidRootPart') or not getgenv().autoFarm 
        end
        wait(0.25)
    end
    hum.WalkSpeed = 16
end

function AutoHarvest()
    while getgenv().autoHavest do
        for i,v in ipairs(game:GetService("Workspace").MyDragonTycoon.Tycoons[player.Team.Name].PurchasedObjects:GetChildren()) do
            if v:FindFirstChild("ClickPart") then
                fireclickdetector(v.ClickPart.ClickDetector)
                rs.Heartbeat:Wait()
            end
        end
        wait(0.25)
    end
end

Combat:Toggle("Auto Farm",function(bool) 
    getgenv().autoFarm = bool
    if getgenv().autoFarm then
        spawn(AutoFarm)
    end
end)

Combat:Toggle("Auto Harvest",function(bool) 
    getgenv().autoHavest = bool
    if  getgenv().autoHavest then
        spawn(AutoHarvest)
    end
end)

-- Credit
Credit:Label("Scirpt: LuckyToT#0001",{
    TextSize = 16;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(38,38,38);
})

Credit:Button("Copy user",function()
    if not setclipboard then return player:Kick('Bye not support') end
    setclipboard("LuckyToT#0001")
end)

Update:Label("08/04/21",{
    TextSize = 20;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(38,38,38);
})
