local UIS = game:GetService("UserInputService")

local player = game.Players.LocalPlayer

local walkSpeed = 16 --Change walk speed value here
local sprintSpeed = 27 --Change sprint speed value here


--Functions
UIS.InputBegan:Connect(function(input, gameProccessedEvent)
	if input.KeyCode == Enum.KeyCode.LeftShift then --change for ipad and phone
		player.Character.Humanoid.WalkSpeed = sprintSpeed
	end
end)

UIS.InputEnded:Connect(function(input, gameProccessedEvent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		player.Character.Humanoid.WalkSpeed = walkSpeed
	end
end)