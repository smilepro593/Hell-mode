if not game:IsLoaded() then
	game.Loaded:Wait()
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

local gui = Instance.new("ScreenGui")
gui.Name = "HellModeTitle"
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

local text = Instance.new("TextLabel")
text.Size = UDim2.fromScale(0.9, 0.12)
text.AnchorPoint = Vector2.new(0.5, 1)
text.Position = UDim2.fromScale(0.5, 0.92)
text.BackgroundTransparency = 1
text.Text = "HELL MODE – Remake Script by Smile and Tuffmu"
text.TextScaled = true
text.TextWrapped = true
text.Font = Enum.Font.GothamBold
text.TextColor3 = Color3.fromRGB(245,235,220)
text.TextTransparency = 1
text.Parent = gui

local stroke = Instance.new("UIStroke", text)
stroke.Color = Color3.fromRGB(60,40,25)
stroke.Thickness = 2
stroke.Transparency = 1

TweenService:Create(text, TweenInfo.new(1), {TextTransparency = 0}):Play()
TweenService:Create(stroke, TweenInfo.new(1), {Transparency = 0}):Play()

task.delay(4, function()
	TweenService:Create(text, TweenInfo.new(1), {TextTransparency = 1}):Play()
	TweenService:Create(stroke, TweenInfo.new(1), {Transparency = 1}):Play()
end) 
