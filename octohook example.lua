--[[ 
thx ride and frosted for the ui docs credits to liam#4567 for making the ui 

confirm = true 

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

local MainTab = menu:AddTab("Main")
local Mainsec = MainTab:AddSection("Main", 1)
local SettingsTab = library:CreateSettingsTab(menu)

Mainsec:AddBox(
    {
        text = "Testing Box",
        flag = "box",
        callback = function(text)
            print(text)
        end
    }
)

Mainsec:AddButton(
    {
        text = "Test",
        callback = function()
       
        end
    }
)

---Functions
Mainsec:AddToggle(
    {
        text = "Toggle",
        flag = "testflag",
        callback = function(bool)
  
        end
    }
)

Mainsec:AddBind(
    {
        text = "Keybind",
        flag = "",
        nomouse = true,
        noindicator = false,
        bind = Enum.KeyCode.BackSlash,
        callback = function()
            print(bool)
        end
    }
)

Mainsec:AddSlider(
    {
        text = " Slider",
        flag = '"',
        suffix = "%",
        min = 0,
        max = 100,
        increment = .1,
        callback = function(v)
            
        end
    }
)

Mainsec:AddColor(
    {
        text = "Color",
        flag = "",
        callback = function()
        end
    }
)

Mainsec:AddList(
    {
        text = "List",
        flag = "",
        values = {
            "Hello",
            "5",
            "222"
        },
        callback = function(bool)
            if bool == "Hello" then 
                print("hi")
                end 
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
