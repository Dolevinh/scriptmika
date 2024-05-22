local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Dolevinh/scriptmika/main/keysystem.lua')))()
local Window = OrionLib:MakeWindow({Name = "KeySystem", HidePremium = true, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "Your in!",
	Content = "Your In The Special LEAN party",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "mikahubbeta" -- You Put Your Key Here
_G.KeyInput = "string"

function MakeScriptHub()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/Dolevinh/scriptmika/main/mikahubv1.lua"), true))() -- You Put Your Script Here

end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Key Đúng",
        Content = "Chào Mừng Đến Với Mika Hub :D",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Key Sai",
        Content = "Key Không Đúng Vui Lòng Vượt Link Bên Dưới Để Lấy Key",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key Room",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "Enter Key",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key!",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})

Tab:AddButton({
	Name = "Copy Key!",
	Callback = function()
      		setclipboard("https://web1s.pro/uHTfQugHpQ") --This Will Copy The Link Of The Key
  	end    
}) 