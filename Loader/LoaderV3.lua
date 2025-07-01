repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

local scripts = {
    [126884695634066] = "https://api.luarmor.net/files/v3/loaders/480cd2cf3280fca3cbf1a7e0f0bf293b.lua",
}

if script_key and script_key ~= "" and script_key ~= "your_key" then
    local url = scripts[game.PlaceId]
    if url then
        loadstring(game:HttpGetAsync(url))()
        --loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/untitled.lua"))()
    end
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "ModernKeyUI"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")


local function showNotification(text)
    local screenGui = gui:FindFirstChild("NotificationGui")
    if not screenGui then
        screenGui = Instance.new("ScreenGui")
        screenGui.Name = "NotificationGui"
        screenGui.Parent = gui
        screenGui.ResetOnSpawn = false
        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    end
    
    local notification = Instance.new("Frame")
    notification.Name = "Notification"
    notification.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
    notification.BackgroundTransparency = 0.1
    notification.BorderSizePixel = 0
    notification.Size = UDim2.new(0.2, 0, 0.08, 0)
    notification.Position = UDim2.new(0.89, 0, 0.79, 0)
    notification.AnchorPoint = Vector2.new(0.5, 0.5)
    notification.Parent = screenGui
    
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 12)
    uiCorner.Parent = notification
    
    local shadow = Instance.new("ImageLabel")
    shadow.Name = "Shadow"
    shadow.Image = "rbxassetid://1316045217"
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.ImageTransparency = 0.8
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.SliceCenter = Rect.new(10, 10, 118, 118)
    shadow.Size = UDim2.new(1, 20, 1, 20)
    shadow.Position = UDim2.new(0, -10, 0, -10)
    shadow.BackgroundTransparency = 1
    shadow.Parent = notification
    shadow.ZIndex = -1
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Text"
    textLabel.Text = text
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextSize = 14
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(0.9, 0, 0.8, 0)
    textLabel.Position = UDim2.new(0.05, 0, 0.1, 0)
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = notification
    
    notification.BackgroundTransparency = 1
    textLabel.TextTransparency = 1
    
    local appearTween = TweenService:Create(
        notification,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundTransparency = 0.1}
    )
    
    local textAppearTween = TweenService:Create(
        textLabel,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {TextTransparency = 0}
    )
    
    appearTween:Play()
    textAppearTween:Play()
    
    wait(3)
    
    local disappearTween = TweenService:Create(
        notification,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {BackgroundTransparency = 1}
    )
    
    local textDisappearTween = TweenService:Create(
        textLabel,
        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        {TextTransparency = 1}
    )
    
    disappearTween:Play()
    textDisappearTween:Play()
    
    disappearTween.Completed:Connect(function()
        notification:Destroy()
    end)
end

local function makeDraggable(frame, dragHandle)
    local dragStartPos
    local frameStartPos
    local dragging = false

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStartPos = Vector2.new(input.Position.X, input.Position.Y)
            frameStartPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = Vector2.new(input.Position.X, input.Position.Y) - dragStartPos
            frame.Position = UDim2.new(frameStartPos.X.Scale, frameStartPos.X.Offset + delta.X, frameStartPos.Y.Scale,
                frameStartPos.Y.Offset + delta.Y)
        end
    end)
end

local keyFrame = Instance.new("Frame")
keyFrame.Name = "KeyFrame"
keyFrame.Size = UDim2.new(0, 350, 0, 250) 
keyFrame.Position = UDim2.new(0.5, -175, 0.5, -125)
keyFrame.AnchorPoint = Vector2.new(0.5, 0.5)
keyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
keyFrame.BackgroundTransparency = 0.1
keyFrame.BorderSizePixel = 0
keyFrame.ClipsDescendants = true
keyFrame.Parent = gui

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 12)
keyCorner.Parent = keyFrame

local keyShadow = Instance.new("ImageLabel")
keyShadow.Name = "Shadow"
keyShadow.Image = "rbxassetid://1316045217"
keyShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
keyShadow.ImageTransparency = 0.8
keyShadow.ScaleType = Enum.ScaleType.Slice
keyShadow.SliceCenter = Rect.new(10, 10, 118, 118)
keyShadow.Size = UDim2.new(1, 20, 1, 20)
keyShadow.Position = UDim2.new(0, -10, 0, -10)
keyShadow.BackgroundTransparency = 1
keyShadow.Parent = keyFrame
keyShadow.ZIndex = -1

local keyTitleBar = Instance.new("Frame")
keyTitleBar.Name = "TitleBar"
keyTitleBar.Size = UDim2.new(1, 0, 0, 40)
keyTitleBar.Position = UDim2.new(0, 0, 0, 0)
keyTitleBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
keyTitleBar.BorderSizePixel = 0
keyTitleBar.Parent = keyFrame

local keyTitleCorner = Instance.new("UICorner")
keyTitleCorner.CornerRadius = UDim.new(0, 12)
keyTitleCorner.Parent = keyTitleBar

local keyTitle = Instance.new("TextLabel")
keyTitle.Name = "Title"
keyTitle.Size = UDim2.new(1, -40, 1, 0)
keyTitle.Position = UDim2.new(0, 20, 0, 0)
keyTitle.BackgroundTransparency = 1
keyTitle.Text = "No Lag (Premium)"
keyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
keyTitle.TextSize = 18
keyTitle.Font = Enum.Font.GothamSemibold
keyTitle.TextXAlignment = Enum.TextXAlignment.Left
keyTitle.Parent = keyTitleBar

local keyCloseButton = Instance.new("TextButton")
keyCloseButton.Name = "CloseButton"
keyCloseButton.Size = UDim2.new(0, 40, 1, 0)
keyCloseButton.Position = UDim2.new(1, -40, 0, 0)
keyCloseButton.BackgroundTransparency = 1
keyCloseButton.Text = "X"
keyCloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
keyCloseButton.TextSize = 18
keyCloseButton.Font = Enum.Font.GothamSemibold
keyCloseButton.Parent = keyTitleBar

local inputFrame = Instance.new("Frame")
inputFrame.Name = "InputFrame"
inputFrame.Size = UDim2.new(1, -40, 0, 40)
inputFrame.Position = UDim2.new(0, 20, 0, 60)
inputFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
inputFrame.BorderSizePixel = 0
inputFrame.Parent = keyFrame

local inputCorner = Instance.new("UICorner")
inputCorner.CornerRadius = UDim.new(0, 8)
inputCorner.Parent = inputFrame

local inputBox = Instance.new("TextBox")
inputBox.Name = "InputBox"
inputBox.Size = UDim2.new(1, -20, 1, -10)
inputBox.Position = UDim2.new(0, 10, 0, 5)
inputBox.BackgroundTransparency = 1
inputBox.PlaceholderText = "Enter key here..."
inputBox.Text = ""
inputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
inputBox.TextSize = 14
inputBox.Font = Enum.Font.Gotham
inputBox.Parent = inputFrame

local getKeyButton = Instance.new("TextButton")
getKeyButton.Name = "GetKeyButton"
getKeyButton.Size = UDim2.new(1, -40, 0, 40)
getKeyButton.Position = UDim2.new(0, 20, 0, 120)
getKeyButton.BackgroundColor3 = Color3.fromRGB(70, 70, 90)
getKeyButton.BorderSizePixel = 0
getKeyButton.Text = "Get Key"
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.TextSize = 16
getKeyButton.Font = Enum.Font.GothamSemibold
getKeyButton.Parent = keyFrame

local getKeyCorner = Instance.new("UICorner")
getKeyCorner.CornerRadius = UDim.new(0, 8)
getKeyCorner.Parent = getKeyButton

local submitButton = Instance.new("TextButton")
submitButton.Name = "SubmitButton"
submitButton.Size = UDim2.new(1, -40, 0, 40)
submitButton.Position = UDim2.new(0, 20, 0, 170)
submitButton.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
submitButton.BorderSizePixel = 0
submitButton.Text = "Submit Key"
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.TextSize = 16
submitButton.Font = Enum.Font.GothamSemibold
submitButton.Parent = keyFrame

local submitCorner = Instance.new("UICorner")
submitCorner.CornerRadius = UDim.new(0, 8)
submitCorner.Parent = submitButton

local function buttonHoverEffect(button)
    local originalColor = button.BackgroundColor3
    local hoverColor = Color3.fromRGB(80, 80, 100)

    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), { BackgroundColor3 = hoverColor }):Play()
    end)

    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), { BackgroundColor3 = originalColor }):Play()
    end)
end

buttonHoverEffect(getKeyButton)
buttonHoverEffect(submitButton)

makeDraggable(keyFrame, keyTitleBar)

keyCloseButton.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(keyFrame, TweenInfo.new(0.3), {
        Size = UDim2.new(0, 0, 0, 0),
        Position = UDim2.new(0.5, 0, 0.5, 0)
    })

    tween:Play()
    tween.Completed:Wait()
    gui:Destroy()
end)

getKeyButton.MouseButton1Click:Connect(function()
    TweenService:Create(getKeyButton, TweenInfo.new(0.1), { Size = UDim2.new(1, -45, 0, 35) }):Play()
    wait(0.1)
    TweenService:Create(getKeyButton, TweenInfo.new(0.1), { Size = UDim2.new(1, -40, 0, 40) }):Play()
    setclipboard("https://ads.luarmor.net/get_key?for=No_Lag_Hub_Lootlabs-umLOYTerpavi")
    showNotification("Successfully Copied Key Link\nPaste it in your browser to continue")
end)

submitButton.MouseButton1Click:Connect(function()
    TweenService:Create(submitButton, TweenInfo.new(0.1), {Size = UDim2.new(1, -45, 0, 35)}):Play()
    wait(0.1)
    TweenService:Create(submitButton, TweenInfo.new(0.1), {Size = UDim2.new(1, -40, 0, 40)}):Play()

    local enteredKey = inputBox.Text
    local correctKeyLength = 32 
    
    if #enteredKey == correctKeyLength then
        task.spawn(function()
            script_key = tostring(enteredKey)
            local url = scripts[game.PlaceId]
            if url then
                loadstring(game:HttpGetAsync(url))()
                --loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/NoLag-id/No-Lag-HUB/refs/heads/main/untitled.lua"))()
            end
        end)
        local tween = TweenService:Create(keyFrame, TweenInfo.new(0.3), {
            BackgroundTransparency = 1,
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        tween:Play()
        tween.Completed:Wait()
        gui:Destroy()
    else
        local shake1 = TweenService:Create(inputFrame, TweenInfo.new(0.05), {Position = UDim2.new(0, 25, 0, 60)})
        local shake2 = TweenService:Create(inputFrame, TweenInfo.new(0.05), {Position = UDim2.new(0, 15, 0, 60)})
        local shake3 = TweenService:Create(inputFrame, TweenInfo.new(0.05), {Position = UDim2.new(0, 20, 0, 60)})
        
        shake1:Play()
        shake1.Completed:Wait()
        shake2:Play()
        shake2.Completed:Wait()
        shake3:Play()
        
        inputFrame.BackgroundColor3 = Color3.fromRGB(100, 30, 30)
        wait(0.5)
        inputFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
        
        print("Invalid key length! Expected "..correctKeyLength.." characters, got "..#enteredKey)
    end
end)


keyFrame.BackgroundTransparency = 1
keyFrame.Size = UDim2.new(0, 0, 0, 0)

local openTween = TweenService:Create(keyFrame, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
    BackgroundTransparency = 0.1,
    Size = UDim2.new(0, 350, 0, 250),
    Position = UDim2.new(0.5, -175, 0.5, -125)
})

openTween:Play()
