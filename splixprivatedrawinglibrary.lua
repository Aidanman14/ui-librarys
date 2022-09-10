
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/matas3535/PoopLibrary/main/Library.lua"))() -- Could Also Save It In Your Workspace And Do loadfile("Library.lua")()
-- // Variables
-- // Init
local Window = Library:New({Name = "Qwerty hub | Baseplate", Accent = Color3.fromRGB(238, 130, 238)}) --  238, 130, 238
--
local Legitbot = Window:Page(
    {Name = "Legit"})
local Ragebot = Window:Page(
    {Name = "Rage"}) 
local Visuals = Window:Page({
    Name = "Visuals"})
local Misc = Window:Page({
    Name = "miscellaneous"})
local Settings = Window:Page({
    Name = "Settings"})
--
local Legitbot_Main = Legitbot:Section({
    Name = "Aim Assistance",
    Side = "Left"
})

local Visuals_Enemies, esp_settings = Visuals:MultiSection({
Sections = {
"ESP",
"settings"
},
 Side = "Left",
 Size = 200})
--
local Settings_Main = Settings:Section({
    Name = "Settings",
    Side = "Left"})
-- // Legitbot
Legitbot_Main:Toggle({
    Name = "Enabled",
    Default = false,
   pointer = "aimbot_enabled"
        
})
:Keybind({
Default = Enum.UserInput.MouseButton2, 
KeybindName = "Legitbot",
Mode = "Hold",
callback = function(bool)
   print(bool) 
end})
Legitbot_Main:Slider({
    Name = "Smoothing",
    Minimum = 1, 
    Maximum = 30,
    Default = 1,
    Decimals = 1,
    pointer = "smoothness_v"
   
})

--

Legitbot_Main:Dropdown({
    Name = "BodyPart", 
    Options = {"Head", "HumanoidRootPart"}, 
    Default = "Head", 
   pointer = "selectbodypart"

})
local afov = Legitbot:Section({
    Name = "Fov",
    Side = "Left"
})
afov:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
        
   print(bool) 
end})
afov:Toggle({
    Name = "Visualize",
    Default = false,
    callback = function(bool)
        
   print(bool) 
end})
afov:Slider({
    Name = "Fov size",
    Minimum = 1, 
    Maximum = 100,
    Default = 1,
    Decimals = 1,
    callback = function(bool)
    print(bool)
end})
local res = Legitbot:Section({
    Name = "resolver",
    Side = "Left"
})
res:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
end})

local Rage_Main = Ragebot:Section({
    Name = "Bullet-Prioritize",
    Side = "Left"
})
Rage_Main:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
        
   print(bool) 
end})
Rage_Main:Slider({
    Name = "Hit-Chance",
    Minimum = 1, 
    Maximum = 100,
    Default = 100,
    Decimals = 1,
    callback = function(bool)
    print(bool)
end})
Rage_Main:Dropdown({
    Name = "method", 
    Options = {"Raycast", "FindPartOnRay", "FindPartOnRayWithWhitelist", "FindPartOnRayWithIgnoreList"}, 
    Default = "Raycast", 
    callback = function(bool)

end})
Rage_Main:Dropdown({
    Name = "BodyPart", 
    Options = {"Head", "HumanoidRootPart"}, 
    Default = "Head", 
    callback = function(bool)

end})


local Trigger_Bot = Ragebot:Section({
    Name = "triggerbot",
    Side = "Right"

})
Trigger_Bot:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
        
   print(bool) 
end})
Trigger_Bot:Slider({
    Name = "reaction",
    Minimum = 1, 
    Maximum = 500,
    Default = 150,
    Decimals = 1,
    callback = function(bool)
    print(bool)
end})
local Fov = Ragebot:Section({
    Name = "Fov",
    Side = "Left"
})
Fov:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
        
   print(bool) 
end})
Fov:Slider({
    Name = "Fov size",
    Minimum = 1, 
    Maximum = 100,
    Default = 1,
    Decimals = 1,
    callback = function(bool)
    print(bool)
end})
local resv = Ragebot:Section({
    Name = "resolver",
    Side = "Left"
})
resv:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(bool)
end})
local antiaim = Ragebot:Section({
    Name = "Anti aim",
    Side = "Right"
})
antiaim:Toggle({
    Name = "spinbot",
    Default = false,
    callback = function(bool)
end})

antiaim:Slider({
    Name = "spinbot power",
    Minimum = -50, 
    Maximum = 50,
    Default = 0,
    Decimals = 1,
    callback = function(bool)
   
end})
antiaim:Toggle({
    Name = "Jitter",
    Default = false,
    callback = function(bool)
end})
antiaim:Slider({
    Name = "jitter power",
    Minimum = -50, 
    Maximum = 50,
    Default = 0,
    Decimals = 1,
    callback = function(bool)
   
end})

antiaim:Dropdown({
    Name = "pitch", 
    Options = { "up", "down"}, 
    Default = "nil", 
    callback = function(bool)

end})

-- // Visuals 
-- esp section
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "Enabled",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "Healthbar",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "snapline",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "info",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "Highlight",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local VisualsEnemies_BoxEsp = Visuals_Enemies:Toggle({
    Name = "box-fill",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
-- esp settings MultiSection
local esp_type = esp_settings:Dropdown({
    Name = "esp type", 
    Options = {"Box", "Corner"}, 
    Default = "Box", 
    callback = function(bool)

end})
local esp_font = esp_settings:Dropdown({
    Name = "esp font", 
    Options = {"UI", "Plex", "Monospace", "system"}, 
    Default = "UI", 
    callback = function(bool)

end})
local esp_size = esp_settings:Slider({
    Name = "font size",
    Minimum = 1, 
    Maximum = 30,
    Default = 1,
    Decimals = 1,
    callback = function(bool)
    print(bool)
end})
local chams_chams = Visuals:Section({
    Name = "local",
    Side = "Right"
})
local VisualsEnemies_BoxEsp = chams_chams:Toggle({
    Name = "gun chams",
    Default = false,
    callback = function(boolean)
       
end})


local VisualsEnemies_BoxEsp = chams_chams:Toggle({
    Name = "localplayer chams",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ESP-Box Color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
local esp_font = chams_chams:Dropdown({
    Name = "Material", 
    Options = {"Plastic", "neon", "Ghost"}, 
    Default = "Plastic", 
    callback = function(bool)
        end})
local VisualsEnemies_BoxEsp = chams_chams:Toggle({
    Name = "Ambience",
    Default = false,
    callback = function(boolean)
    
end})
VisualsEnemies_BoxEsp:Colorpicker({
    Info = "ambience color", 
    Alpha = 0.75,
    Default = Color3.fromRGB(200, 200, 200),
    callback = function(boolean)
    
end})
--
local weaponmod = Misc:Section({
    Name = "Weapon-Modifications",
    Side = "Left"
})
weaponmod:Slider({
    Name = "Recoil control",
    Minimum = 0, 
    Maximum = 100,
    Default = 100,
    Decimals = 1,
    pointer = ""
   
})

weaponmod:Slider({
    Name = "Spread control",
    Minimum = 0, 
    Maximum = 100,
    Default = 100,
    Decimals = 1,
    pointer = ""
   
})
local lplrmod = Misc:Section({
    Name = "Weapon-Modifications",
    Side = "Left"
})
-- // Settings
Settings_Main:ConfigBox({})
Settings_Main:ButtonHolder({
    Buttons = {{"Load", function() end},
        {"Save", function() end}}})
Settings_Main:Label({
    Name = "Unloading will fully unload\neverything, so save your\nconfig before unloading.", 
    Middle = true})
Settings_Main:Button({
    Name = "Unload", 
    Callback = function() 
    Window:Unload() 
end})
-- // Initialisation
Window:Initialize()
