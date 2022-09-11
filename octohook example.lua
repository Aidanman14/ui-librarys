--[[ 
thx ride and frosted for the ui docs credits to liam#4567 for making the ui 
confirm = true 
looking into the source code helps 
]]

local startTick = tick()

local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/notfrostedwow/sadasds/main/octohooksrc.lua"))(
    {cheatname = "Qwhub", gamename = "Baseplate"} --
)
library:init()
local utility = library.utility
local signal = library.signal

local menu =
    library.NewWindow({title = library.cheatname .. " | Private | " ..   library.gamename, size = UDim2.new(0, 500, 0.5, 20)}) -- also no Qw hub doesnt exist just a name 

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--> Tabs <-- 
local CombatTab = menu:AddTab("Combat")
local Visualstab = menu:AddTab("Visuals")
local Misctab = menu:AddTab("Misc")

local SettingsTab = library:CreateSettingsTab(menu)
--> sections <-- 
local Aimbotsec = CombatTab:AddSection("Aim-Assist", 1)
local saimsec = CombatTab:AddSection("Bullet-Prioritize", 2)


local aimbottoggle = Aimbotsec:AddToggle(
    {
        text = "Enabled",
        flag = "Aimbot_enabled",
        callback = function(bool)
  print(bool)
        end
    }
)
aimbottoggle:AddBind(
    {
        text = "Aimbot",
        flag = "Aimbotkeybind",
        nomouse = false,
        noindicator = false,
        bind = Enum.UserInputType.MouseButton2,
        callback = function(bool)
            print(bool)
        end
    }
)
Aimbotsec:AddList(
    {
        text = "Bone",
        flag = "",
        values = { 
            "Head",
            "UpperTorso",
            "HumanoidRootPart",
             "LowerTorso", 
             "LeftHand",
             "RightHand",
             "LeftLowerArm",
             "RightLowerArm",
             "LeftUpperArm",
             "RightUpperArm",
             "LeftFoot",
             "LeftLowerLeg",
             "LeftUpperLeg",
             "RightLowerLeg",
              "RightFoot",
             "RightUpperLeg"
        },
    --   
        callback = function(bool)
          print(bool)
        end
    }
)
