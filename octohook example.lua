--[[ 
thx ride and frosted for the docs 
--]] 

local startTick = tick()

local library =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Qwisaskid/ui-librarys/main/octohook%20ui%20source.lua"))(
    {cheatname = "Qwhub", gamename = "Counter Blox"}
)
library:init()
local utility = library.utility
local signal = library.signal

local menu =
    library.NewWindow({title = library.cheatname .. " | " .. library.gamename, size = UDim2.new(0, 500, 0.5, 20)})

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

local MainTab = menu:AddTab("Main")
local MainTab = MainTab:AddSection("Main", 1)
local SettingsTab = library:CreateSettingsTab(menu)

MainTab:AddBox(
    {
        text = "Testing Box",
        flag = "box",
        callback = function(text)
            print(text)
        end
    }
)
--> textbox is kinda broken <--
MainTab:AddButton(
    {
        text = "Test",
        callback = function()
            print("hi")
        end
    }
)

---Functions
MainTab:AddToggle(
    {
        text = "Toggle",
        flag = "",
        callback = function(bool)
    print(bool)
        end
    }
)

MainTab:AddBind(
    {
        text = "Keybind",
        flag = "",
        nomouse = true,
        noindicator = true,
        bind = Enum.KeyCode.BackSlash,
        callback = function()
            Print("666")
        end
    }
)

MainTab:AddSlider(
    {
        text = "slider",
        flag = 'Walkspeed',
        suffix = "%",
        min = 16,
        max = 100,
        increment = 1,
        callback = function(v)
            game.Player.LocalPlayer.Character.Humanoid.WalkSpeed = v 
        end
    }
)

MainTab:AddColor(
    {
        text = "Color",
        flag = "",
        callback = function()
        end
    }
)

MainTab:AddList(
    {
        text = "List",
        flag = "",
        values = {
            "Hello",
            "5",
            "222"
        },
        callback = function()
        end
    }
)

--// Second Tab
local SecondTab = menu:AddTab("Second")
local FirstSection = SecondTab:AddSection("First Section", 1)

FirstSection:AddButton(
    {
        text = "Hello",
        callback = function()
            print("yo")
        end
    }
)

local SecondSection = SecondTab:AddSection("Second", 2)
SecondSection:AddSeparator({text = "Separator"})

SecondSection:AddButton(
    {
        text = "bbaa",
        callback = function()
            print("yo")
        end
    }
)

local ThirdSection = SecondTab:AddSection("Third", 1)

ThirdSection:AddButton(
    {
        text = "button",
        callback = function()
            print("ye")
        end
    }
)

local Fourth = SecondTab:AddSection("Fourht", 2)

Fourth:AddButton(
    {
        text = "button",
        callback = function()
            print("ye")
        end
    }
)
