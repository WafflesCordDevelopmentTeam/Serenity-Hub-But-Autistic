-- Load the Orion UI Library
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Serenity Hub | Be Autistic (real?)",  -- Window title
    HidePremium = false,  -- Whether or not to show premium status
    SaveConfig = true,  -- Save the configuration of the UI
    ConfigFolder = "OrionTest",  -- Folder where the config is saved
    IntroEnabled = true,  -- Enable intro animation
    IntroText = "Welcome to Serenity Hub!",  -- Intro text
    IntroIcon = "https://www.roblox.com/asset-thumbnail/image?assetId=1832516530&width=420&height=420&format=png",  -- Intro image URL (Anime Girl)
    Icon = "https://create.roblox.com/store/asset/1134838002/Anime-Girl?keyword=Anime+girl&pageNumber=6&pagePosition=25",  -- New Anime Girl icon
})

-- Create tabs with custom names and icons
local Tab1 = Window:MakeTab({
    Name = "Tab 1", 
    Icon = "https://create.roblox.com/store/asset/1134838002/Anime-Girl?keyword=Anime+girl&pageNumber=6&pagePosition=25",  -- Anime Girl icon
    PremiumOnly = false
})

local Tab2 = Window:MakeTab({
    Name = "Tab 2", 
    Icon = "https://www.roblox.com/asset-thumbnail/image?assetId=7191235926&width=420&height=420&format=png",  -- Another Anime Girl icon
    PremiumOnly = false
})

local Tab3 = Window:MakeTab({
    Name = "Tab 3", 
    Icon = "https://www.roblox.com/asset-thumbnail/image?assetId=486096861&width=420&height=420&format=png",  -- Adorable Anime Girl icon
    PremiumOnly = false
})

local Tab4 = Window:MakeTab({
    Name = "Tab 4", 
    Icon = "https://www.roblox.com/asset-thumbnail/image?assetId=469317097&width=420&height=420&format=png",  -- Cute Anime Cat icon
    PremiumOnly = false
})

local Tab5 = Window:MakeTab({
    Name = "Tab 5", 
    Icon = "https://www.roblox.com/asset-thumbnail/image?assetId=6144693835&width=420&height=420&format=png",  -- Anime Girl icon
    PremiumOnly = false
})

-- Tab 6 (Discord link)
local Tab6 = Window:MakeTab({
    Name = "Tab 6", 
    Icon = "https://create.roblox.com/store/asset/1134838002/Anime-Girl?keyword=Anime+girl&pageNumber=6&pagePosition=25",  -- Anime Girl icon
    PremiumOnly = false
})

-- Add Sections and Buttons to the Tabs
-- Tab 1 (Teleport through checkpoints)
local Section1 = Tab1:AddSection({
    Name = "Teleport Checkpoints",
    Side = "Left"
})
Section1:AddButton({
    Name = "Start Teleporting Through Checkpoints",
    Callback = function()
        local v = true  -- Ensure 'v' is true to start the teleportation process
        if v then
            -- Start teleporting through checkpoints
            for _, checkpoint in pairs(workspace.Map.Checkpoints:GetChildren()) do
                local checkpointPos = checkpoint:FindFirstChild("Position") -- Ensure position exists
                if checkpointPos then
                    game.Players.LocalPlayer.Character:MoveTo(checkpointPos.Position)
                    task.wait(math.random(1, 3))  -- Wait for a random time between 1 and 3 seconds for smoothness
                end
            end

            -- Finish the obby instantly
            local finishPart = workspace.Map.Builds:GetChildren()[13]:FindFirstChild("Meshes/GroundSandDirt2_camurlud.001")
            if finishPart then
                game.Players.LocalPlayer.Character:MoveTo(finishPart.Position)
            end
        end
    end
})

-- Tab 2 (Finish obby instantly)
local Section2 = Tab2:AddSection({
    Name = "Instant Finish",
    Side = "Left"
})
Section2:AddButton({
    Name = "Finish Obby Instantly",
    Callback = function()
        -- Finish the obby instantly
        local finishPart = workspace.Map.Builds:GetChildren()[13]:FindFirstChild("Meshes/GroundSandDirt2_camurlud.001")
        if finishPart then
            game.Players.LocalPlayer.Character:MoveTo(finishPart.Position)
        end
    end
})

-- Tab 3 (Add content for kemono.party and 4chan.org links)
local Section3 = Tab3:AddSection({
    Name = "Links",
    Side = "Left"
})
Section3:AddLabel("kemono.party & 4chan.org")

-- Tab 4 (Add content for kemono.party and 4chan.org links)
local Section4 = Tab4:AddSection({
    Name = "Links",
    Side = "Left"
})
Section4:AddLabel("kemono.party & 4chan.org")

-- Tab 5 (Add content for kemono.party and 4chan.org links)
local Section5 = Tab5:AddSection({
    Name = "Links",
    Side = "Left"
})
Section5:AddLabel("kemono.party & 4chan.org")

-- Tab 6 (Discord link)
local Section6 = Tab6:AddSection({
    Name = "Discord",
    Side = "Left"
})
Section6:AddLabel("Discord: pekoara")
