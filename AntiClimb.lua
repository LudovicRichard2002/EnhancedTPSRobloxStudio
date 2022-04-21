local player = game.Players.LocalPlayer
local character = player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)