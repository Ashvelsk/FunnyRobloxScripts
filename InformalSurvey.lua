
---@ IDOIT SCRIPT MADE BY Ar
---I got mad while making this, so these codes are really chaos


local localplay = game:GetService("Players").LocalPlayer
local Hum:Humanoid = localplay.Character:FindFirstChild("Humanoid")
script.Parent=localplay.PlayerScripts

---creat EVERYTHING
local SGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local HideButton = Instance.new("TextButton")

SGUI.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
SGUI.ResetOnSpawn = false
SGUI.IgnoreGuiInset = true

Frame.BackgroundColor3=Color3.new(0.141176, 0.980392, 0.980392)
Frame.BackgroundTransparency=0.8
Frame.Position = UDim2.new(0,0,0.424,0)
Frame.Size = UDim2.new(0.136,0,0.073,0)

TextBox.BackgroundTransparency=0.65
TextBox.Size =UDim2.new(1,0,0.471,0)
TextBox.TextColor3= Color3.fromRGB(255,255,255)
TextBox.TextScaled = true
TextBox.TextEditable = false
TextBox.ClearTextOnFocus = false
TextBox.TextStrokeTransparency = 0.8
TextBox.Text = "CFrame will be there"


TextButton.Size=UDim2.new(1,0,0.529,0)
TextButton.Position=UDim2.new(0,0,0.471,0)
TextButton.Style=Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton.Text = "UWU"
TextButton.TextScaled = true

HideButton.Name = "HideButton"
HideButton.Size = UDim2.new(0.155,0,1,0)
HideButton.Position = UDim2.new(0.998,0,0,0)
HideButton.Text = "<"
HideButton.TextScaled = true
HideButton.TextColor3 = Color3.new(0.419608, 0.419608, 0.419608)
HideButton.TextStrokeColor3 = Color3.new(1, 1, 1)
HideButton.TextStrokeTransparency = 0
Instance.new("UICorner",HideButton)
local HideGrade = Instance.new("UIGradient",HideButton)
HideGrade.Color = ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.new(0.356863, 0.356863, 0.356863)),ColorSequenceKeypoint.new(1,Color3.new(1, 1, 1))}
local HideCorner = Instance.new("UICorner",HideButton)
local HideStroke = Instance.new("UIStroke",HideButton)
HideStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
HideStroke.Color = Color3.new(1, 1, 1)

		
TextBox.Parent=Frame;TextButton.Parent=Frame;HideButton.Parent=Frame
Frame.Parent=SGUI
SGUI.Parent=game:GetService("Players").LocalPlayer.PlayerGui

---FUNCTIONS
local Hide = false
function HideGui()
	if not Hide then
		Frame:TweenPosition(UDim2.fromScale(-0.136,0.424),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1,true)
		Hide = true
		HideButton.Text = ">"
	else
		Frame:TweenPosition(UDim2.fromScale(0,0.424),Enum.EasingDirection.Out,Enum.EasingStyle.Back,1,true)
		Hide = false
		HideButton.Text = "<"
	end
end

function GetCframe()
	return localplay.Character.HumanoidRootPart.Position
end


---EVENT
HideButton.MouseButton1Click:Connect(HideGui)

TextButton.MouseButton1Click:Connect(function()
	TextBox.Text = tostring(GetCframe())
end)

