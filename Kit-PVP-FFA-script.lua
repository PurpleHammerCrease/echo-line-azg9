-- key: no keyless script found for this game
-- SHAMAN | 1881 - ∞ — Carbon Glass Loader
-- Existing game routing preserved; visual layer redesigned.
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local qot = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
if type(qot) == "function" then
    pcall(qot, 'loadstring(game:HttpGet("https://raw.githubusercontent.com/shamancodes/shaman/main/l"))()')
end

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer

local Games = {
    [78884249003161] = {
        name = "Blox War",
        url = "https://api.jnkie.com/api/v1/luascripts/public/39136d4eacb9d73bc8095b2234777f9f46dde2f091cca9a0e18247667dceffdd/download"
    },
    [82331798712738] = {
        name = "+1 Heart Per Kill",
        url = "https://api.jnkie.com/api/v1/luascripts/public/031225dbd8c8c1e89e5f214edf594add268f096e18dda492a4eeaef54963eda5/download"
    },
    [98979169190595] = {
        name = "Volleybomb",
        url = "https://api.jnkie.com/api/v1/luascripts/public/a7f10b10ac996bf96ea445e3b84f6a4bc45ae5383ca684c63a5396410f4ac1f5/download"
    },
    [108114331578868] = {
        name = "Towers Of Fortune",
        url = "https://api.jnkie.com/api/v1/luascripts/public/929c6ed4e31fe86b000ac7ce9af56999f2185b6b78cd684db478455b8df14311/download"
    },
    [10772946647] = {
        name = "Do Not Stop",
        url = "https://api.jnkie.com/api/v1/luascripts/public/f2c2d5765b0ff3b1054a8d24009e5a15b2f51564cecc11047cc3e8d33b940a46/download"
    },
    [134426802645223] = {
        name = "Highway Racing",
        url = "https://api.jnkie.com/api/v1/luascripts/public/c161f6999d6271eac845eaa6dad5fed3e5daceb95a70e83f4d7cc4e07c76f43e/download"
    },
    [75260404327641] = {
        name = "Kit PVP FFA",
        url = "https://api.jnkie.com/api/v1/luascripts/public/3c69f4e76672d6e47d0c45f4972ae5956c767499b716791860bdd2363021d072/download"
    },
    [6828750170] = {
        name = "Bhop Sniper",
        url = "https://api.jnkie.com/api/v1/luascripts/public/8982e7b813d32f255299efc71d3fc2199fa0bbba90cb8aa6549480c51117579a/download"
    },
    [83784149502814] = {
        name = "Bloxng",
        url = "https://api.jnkie.com/api/v1/luascripts/public/966fb8aaf7cae2f6ab73f04cedead959828111c8812da132ba89e71393c8e13f/download"
    },
    [76870565041704] = {
        name = "Unstable SMP FFA",
        url = "https://api.jnkie.com/api/v1/luascripts/public/5be0049855db7a0553af317df228f61d5193053f285e5b6a5f75eb6cdf4a9a27/download"
    },
    [137629355240872] = {
        name = "Glorybound",
        url = "https://api.jnkie.com/api/v1/luascripts/public/e30a58054a9e5432e780b997ddbc79dbccf7dc44aa65203859a165344cef2000/download"
    },
    [81225487834060] = {
        name = "Moto Empire",
        url = "https://api.jnkie.com/api/v1/luascripts/public/9be3a8c5da243c22cb6eb99ac72a6771bec36c0e37e5f89416f0b17ed9b9d9e8/download"
    },
    [10767012496] = {
        name = "Turbo Football",
        url = "https://api.jnkie.com/api/v1/luascripts/public/a51a16ae3120a21c9a039e4fad03fcbb6676069388f209d686fd3843437f5d04/download"
    },
    [129081220403721] = {
        name = "Throw a Seed",
        url = "https://api.jnkie.com/api/v1/luascripts/public/92ea24106e4bd2cd1ce912046d3baa4a3d1544eff513f8f1a0c73cb442b461ea/download"
    },
    [10774598960] = {
        name = "Wings Fight",
        url = "https://api.jnkie.com/api/v1/luascripts/public/446148ec9f7736911636c20daf448dfd2417d00d41b662abc184f5ba1085f656/download"
    },
    [106931373443671] = {
        name = "Ragdoll Soccer",
        url = "https://api.jnkie.com/api/v1/luascripts/public/5e8ae320a711ddb63824f599cea0b77aa46897bd04e0ac4a8bd4c8603886e73c/download"
    }
}

local lionColors = {
    Color3.fromRGB(35, 5, 64),
    Color3.fromRGB(64, 20, 110),
    Color3.fromRGB(84, 36, 128),
    Color3.fromRGB(246, 244, 252),
    Color3.fromRGB(42, 19, 77),
    Color3.fromRGB(180, 171, 205),
    Color3.fromRGB(223, 217, 239),
    Color3.fromRGB(110, 60, 151),
    Color3.fromRGB(24, 7, 45),
    Color3.fromRGB(19, 8, 28),
    Color3.fromRGB(8, 3, 23),
    Color3.fromRGB(16, 7, 38),
    Color3.fromRGB(7, 4, 15),
    Color3.fromRGB(62, 35, 98),
    Color3.fromRGB(7, 4, 13),
    Color3.fromRGB(94, 83, 130),
    Color3.fromRGB(22, 12, 42),
    Color3.fromRGB(159, 144, 192),
    Color3.fromRGB(203, 193, 228),
    Color3.fromRGB(21, 16, 34),
    Color3.fromRGB(68, 57, 96),
    Color3.fromRGB(16, 12, 25),
    Color3.fromRGB(2, 1, 6),
    Color3.fromRGB(9, 7, 15),
    Color3.fromRGB(46, 36, 73),
    Color3.fromRGB(24, 20, 36),
    Color3.fromRGB(118, 108, 151),
    Color3.fromRGB(12, 9, 18),
    Color3.fromRGB(61, 47, 92),
    Color3.fromRGB(41, 35, 59),
    Color3.fromRGB(15, 8, 22),
    Color3.fromRGB(7, 6, 10),
    Color3.fromRGB(77, 69, 102),
    Color3.fromRGB(155, 117, 196),
    Color3.fromRGB(0, 0, 3),
    Color3.fromRGB(9, 7, 12),
    Color3.fromRGB(12, 9, 22),
    Color3.fromRGB(29, 18, 56),
    Color3.fromRGB(16, 8, 26),
    Color3.fromRGB(12, 7, 16),
    Color3.fromRGB(10, 8, 15),
    Color3.fromRGB(32, 27, 53),
    Color3.fromRGB(4, 4, 6),
    Color3.fromRGB(148, 81, 186),
    Color3.fromRGB(12, 5, 27),
}
local lionRows = {
    {13,2,1,1}, {14,2,1,2}, {13,3,1,3}, {14,3,1,4}, {15,3,1,5}, {13,4,1,6}, {14,4,1,7}, {15,4,1,8}, {16,4,1,9}, {17,4,1,10},
    {18,4,1,11}, {19,4,1,12}, {20,4,1,13}, {21,4,1,14}, {8,5,1,15}, {9,5,1,16}, {10,5,1,5}, {11,5,2,17}, {13,5,1,18}, {14,5,1,19},
    {15,5,1,8}, {16,5,1,9}, {17,5,1,20}, {18,5,1,21}, {19,5,1,16}, {20,5,1,22}, {21,5,1,23}, {8,6,1,24}, {9,6,1,17}, {10,6,1,25},
    {11,6,1,11}, {12,6,1,26}, {13,6,1,25}, {14,6,1,4}, {15,6,1,12}, {16,6,1,10}, {17,6,1,20}, {18,6,1,27}, {19,6,1,2}, {20,6,1,26},
    {21,6,1,28}, {8,7,1,23}, {9,7,1,15}, {10,7,1,27}, {11,7,1,26}, {12,7,1,3}, {13,7,1,6}, {14,7,1,7}, {15,7,1,27}, {16,7,1,5},
    {17,7,1,12}, {18,7,1,27}, {19,7,1,13}, {20,7,1,14}, {21,7,1,24}, {8,8,1,29}, {9,8,1,30}, {10,8,1,16}, {11,8,1,27}, {12,8,1,18},
    {13,8,1,6}, {14,8,1,27}, {15,8,1,18}, {16,8,1,27}, {17,8,1,16}, {18,8,2,14}, {20,8,1,31}, {21,8,1,32}, {8,9,1,5}, {9,9,1,10},
    {10,9,1,29}, {11,9,1,33}, {12,9,1,18}, {13,9,1,7}, {14,9,1,27}, {15,9,1,19}, {16,9,1,34}, {17,9,1,21}, {18,9,1,5}, {19,9,1,1},
    {20,9,1,35}, {21,9,1,36}, {6,10,1,33}, {7,10,1,19}, {8,10,1,7}, {9,10,1,19}, {10,10,1,16}, {11,10,2,37}, {13,10,1,25}, {14,10,1,27},
    {15,10,1,38}, {16,10,1,22}, {17,10,1,37}, {18,10,1,26}, {19,10,1,20}, {20,10,2,14}, {22,10,1,36}, {6,11,1,33}, {7,11,1,29}, {8,11,1,18},
    {9,11,2,7}, {11,11,1,34}, {12,11,1,29}, {13,11,1,39}, {14,11,1,21}, {15,11,1,26}, {16,11,1,37}, {17,11,1,20}, {18,11,1,16}, {19,11,1,34},
    {20,11,1,30}, {21,11,1,5}, {22,11,1,40}, {23,11,1,41}, {6,12,2,27}, {8,12,1,24}, {9,12,1,30}, {10,12,1,16}, {11,12,1,6}, {12,12,1,7},
    {13,12,1,27}, {14,12,1,42}, {15,12,1,30}, {16,12,2,16}, {18,12,2,29}, {20,12,1,3}, {21,12,1,25}, {22,12,1,37}, {23,12,1,22}, {4,13,1,33},
    {5,13,1,7}, {6,13,1,6}, {7,13,1,25}, {8,13,1,22}, {9,13,1,37}, {10,13,1,27}, {11,13,1,19}, {12,13,5,4}, {17,13,1,7}, {18,13,1,29},
    {19,13,1,43}, {20,13,1,3}, {21,13,1,13}, {22,13,1,34}, {23,13,1,14}, {24,13,1,12}, {3,14,1,21}, {4,14,1,27}, {5,14,1,16}, {6,14,2,21},
    {8,14,1,42}, {9,14,1,21}, {10,14,1,33}, {11,14,1,25}, {12,14,1,16}, {13,14,1,7}, {14,14,1,19}, {15,14,2,7}, {17,14,1,34}, {18,14,1,5},
    {19,14,1,37}, {20,14,1,20}, {21,14,1,17}, {22,14,1,3}, {23,14,1,44}, {24,14,1,17}, {3,15,1,24}, {4,15,1,35}, {5,15,1,33}, {6,15,1,18},
    {7,15,1,30}, {8,15,1,7}, {9,15,1,33}, {10,15,1,6}, {11,15,1,7}, {12,15,1,6}, {13,15,1,33}, {14,15,2,4}, {16,15,1,16}, {17,15,1,8},
    {18,15,1,27}, {19,15,1,17}, {20,15,1,27}, {21,15,1,29}, {22,15,1,3}, {23,15,1,24}, {24,15,1,20}, {3,16,1,35}, {4,16,1,30}, {5,16,1,19},
    {6,16,1,17}, {7,16,1,6}, {8,16,1,33}, {9,16,1,18}, {10,16,1,20}, {11,16,1,27}, {12,16,1,18}, {13,16,1,6}, {14,16,2,4}, {16,16,1,27},
    {17,16,2,25}, {19,16,1,20}, {20,16,1,29}, {21,16,1,27}, {22,16,1,44}, {23,16,1,29}, {24,16,1,23}, {3,17,1,43}, {4,17,2,27}, {6,17,1,16},
    {7,17,2,18}, {9,17,1,4}, {10,17,1,30}, {11,17,1,26}, {12,17,1,25}, {13,17,1,19}, {14,17,2,4}, {16,17,1,19}, {17,17,1,27}, {18,17,1,37},
    {19,17,1,22}, {20,17,1,12}, {21,17,1,33}, {22,17,1,3}, {23,17,1,16}, {24,17,1,23}, {4,18,1,16}, {5,18,1,42}, {6,18,1,32}, {7,18,1,35},
    {8,18,2,19}, {10,18,1,35}, {11,18,1,32}, {12,18,1,27}, {13,18,1,7}, {14,18,1,33}, {15,18,1,35}, {16,18,1,17}, {17,18,1,6}, {18,18,1,35},
    {19,18,1,20}, {20,18,1,25}, {21,18,1,20}, {22,18,1,12}, {23,18,1,8}, {24,18,1,30}, {4,19,1,25}, {5,19,1,35}, {6,19,1,28}, {7,19,1,41},
    {8,19,1,19}, {9,19,1,33}, {10,19,1,26}, {11,19,1,30}, {12,19,1,18}, {13,19,1,19}, {14,19,1,6}, {15,19,1,25}, {16,19,1,18}, {17,19,1,27},
    {18,19,1,28}, {19,19,1,23}, {20,19,1,29}, {21,19,1,38}, {22,19,1,11}, {23,19,1,14}, {24,19,1,25}, {5,20,1,32}, {6,20,2,42}, {8,20,1,21},
    {9,20,1,35}, {10,20,1,16}, {11,20,1,35}, {12,20,1,28}, {13,20,1,22}, {14,20,1,13}, {15,20,1,37}, {16,20,1,13}, {17,20,1,20}, {18,20,1,37},
    {19,20,1,20}, {20,20,1,38}, {21,20,1,39}, {22,20,1,15}, {23,20,1,9}, {5,21,1,32}, {6,21,1,42}, {7,21,1,25}, {8,21,1,42}, {9,21,1,35},
    {10,21,1,27}, {11,21,1,28}, {12,21,1,32}, {13,21,1,21}, {14,21,1,18}, {15,21,1,33}, {16,21,1,20}, {17,21,1,43}, {18,21,2,20}, {20,21,1,37},
    {21,21,1,17}, {22,21,1,24}, {6,22,2,25}, {8,22,1,36}, {9,22,1,32}, {10,22,2,25}, {12,22,1,42}, {13,22,1,30}, {14,22,1,27}, {15,22,1,21},
    {16,22,1,26}, {17,22,1,36}, {18,22,1,22}, {19,22,1,23}, {20,22,1,17}, {21,22,1,2}, {6,23,1,45}, {7,23,1,5}, {8,23,1,28}, {9,23,1,35},
    {10,23,1,37}, {11,23,1,42}, {12,23,1,25}, {13,23,1,43}, {14,23,1,30}, {15,23,1,42}, {16,23,1,43}, {17,23,1,28}, {18,23,1,11}, {19,23,1,43},
    {20,23,1,5}, {21,23,1,1}, {7,24,1,35}, {8,24,1,42}, {9,24,1,43}, {10,24,1,20}, {11,24,1,37}, {12,24,1,30}, {13,24,1,22}, {14,24,1,32},
    {15,24,1,24}, {16,24,1,41}, {17,24,1,22}, {18,24,1,13}, {19,24,1,39}, {20,24,1,2}, {9,25,1,35}, {10,25,1,13}, {11,25,1,23}, {12,25,1,41},
    {13,25,1,25}, {14,25,1,30}, {15,25,1,22}, {16,25,1,12}, {17,25,1,11}, {12,26,1,43}, {13,26,1,26}, {14,26,1,42}, {15,26,1,17}, {16,26,1,42},
}

-- Visual layer: native Roblox UI, no external image assets.
local ParentGui = (gethui and gethui()) or CoreGui or LocalPlayer:WaitForChild("PlayerGui")
local oldGui = ParentGui:FindFirstChild("ShamanCodeLoader")
if oldGui then oldGui:Destroy() end
local oldBlur = Lighting:FindFirstChild("ShamanLoaderBlur")
if oldBlur then oldBlur:Destroy() end

local matchedGame = Games[game.PlaceId] or Games[game.GameId]
local entries = {}
for _, info in pairs(Games) do
    table.insert(entries, info)
end
table.sort(entries, function(a, b)
    if a == b then return false end
    if a == matchedGame then return true end
    if b == matchedGame then return false end
    return string.lower(a.name) < string.lower(b.name)
end)

local C = {
    bg = Color3.fromRGB(11, 12, 15),
    surface = Color3.fromRGB(20, 22, 26),
    raised = Color3.fromRGB(24, 26, 30),
    hover = Color3.fromRGB(29, 31, 36),
    stroke = Color3.fromRGB(43, 45, 51),
    text = Color3.fromRGB(241, 241, 242),
    muted = Color3.fromRGB(164, 166, 173),
    dim = Color3.fromRGB(129, 131, 140),
    violet = Color3.fromRGB(161, 128, 229),
    pink = Color3.fromRGB(231, 169, 206),
    green = Color3.fromRGB(105, 217, 166),
    red = Color3.fromRGB(246, 138, 155),
}
local stateColor = matchedGame and C.green or C.red
local stateSurface = matchedGame and Color3.fromRGB(19, 39, 32) or Color3.fromRGB(42, 25, 31)

local function new(class, parent, props)
    local obj = Instance.new(class)
    for key, value in pairs(props or {}) do obj[key] = value end
    obj.Parent = parent
    return obj
end
local function corner(obj, radius)
    return new("UICorner", obj, {CornerRadius = UDim.new(0, radius)})
end
local function stroke(obj, color, transparency)
    return new("UIStroke", obj, {
        Color = color, Thickness = 1, Transparency = transparency or 0,
        ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
    })
end
local function frame(parent, name, x, y, w, h, color, z)
    return new("Frame", parent, {
        Name = name, Position = UDim2.fromOffset(x, y), Size = UDim2.fromOffset(w, h),
        BackgroundColor3 = color, BorderSizePixel = 0, ZIndex = z or 2,
    })
end
local function label(parent, name, text, x, y, w, h, size, color, font, alignment, z)
    return new("TextLabel", parent, {
        Name = name, Text = text, Position = UDim2.fromOffset(x,y), Size = UDim2.fromOffset(w,h),
        TextSize = size, TextColor3 = color, Font = font or Enum.Font.GothamMedium,
        TextXAlignment = alignment or Enum.TextXAlignment.Left,
        TextYAlignment = Enum.TextYAlignment.Center, TextTruncate = Enum.TextTruncate.AtEnd,
        BackgroundTransparency = 1, BorderSizePixel = 0, ZIndex = z or 3,
    })
end
local function tween(obj, duration, props, direction)
    local anim = TweenService:Create(obj, TweenInfo.new(duration, Enum.EasingStyle.Quint, direction or Enum.EasingDirection.Out), props)
    anim:Play()
    return anim
end
local function gradient(parent, a, b, rotation)
    return new("UIGradient", parent, {Color = ColorSequence.new(a,b), Rotation = rotation or 90})
end

local function drawLion(parent, size)
    local holder = frame(parent, "CrownedLion", 0, 0, size, size, C.bg, 4)
    holder.BackgroundTransparency = 1
    for _, p in ipairs(lionRows) do
        new("Frame", holder, {
            Position = UDim2.fromScale(p[1]/28,p[2]/28),
            Size = UDim2.fromScale(p[3]/28,1/28),
            BackgroundColor3 = lionColors[p[4]], BorderSizePixel = 0, ZIndex = 5,
        })
    end
    return holder
end

local gui = new("ScreenGui", ParentGui, {
    Name = "ShamanCodeLoader", IgnoreGuiInset = true, ResetOnSpawn = false,
    ZIndexBehavior = Enum.ZIndexBehavior.Sibling, DisplayOrder = 100,
})
local blur = new("BlurEffect", Lighting, {Name = "ShamanLoaderBlur", Size = 0})
local alive, exiting = true, false
local connections = {}
local function connect(signal, callback)
    local c = signal:Connect(callback)
    table.insert(connections, c)
    return c
end
connect(gui.Destroying, function()
    alive = false
    for _, c in ipairs(connections) do c:Disconnect() end
    if blur.Parent then blur:Destroy() end
end)

local shade = new("Frame", gui, {
    Name = "Backdrop", Size = UDim2.fromScale(1,1),
    BackgroundColor3 = Color3.fromRGB(8,9,12), BackgroundTransparency = 1,
    BorderSizePixel = 0, ZIndex = 1,
})
local panel = new("CanvasGroup", shade, {
    Name = "CarbonGlass", AnchorPoint = Vector2.new(0.5,0.5),
    Position = UDim2.new(0.5,0,0.5,12), Size = UDim2.fromOffset(440,384),
    BackgroundColor3 = C.surface, BackgroundTransparency = 0.04,
    GroupTransparency = 1, BorderSizePixel = 0, ZIndex = 2,
})
corner(panel, 17)
stroke(panel, Color3.fromRGB(86,78,105), 0.18)
local scale = new("UIScale", panel, {Scale = 1})
local fit = 1
local motionScale = new("NumberValue", gui, {Name = "MotionScale", Value = 0.94})
local function resize()
    local screen = shade.AbsoluteSize
    if screen.X <= 0 or screen.Y <= 0 then return end
    fit = math.min(1, math.max(0.1,(screen.X-28)/440), math.max(0.1,(screen.Y-28)/384))
    scale.Scale = fit * motionScale.Value
end
connect(shade:GetPropertyChangedSignal("AbsoluteSize"), resize)
connect(motionScale:GetPropertyChangedSignal("Value"), resize)
resize()
task.defer(function() if alive then resize() end end)

-- A restrained tinted sheen, not a white wash over the controls.
local sheen = frame(panel, "GlassSheen", 0, 0, 440, 115, Color3.fromRGB(81,65,106), 2)
sheen.BackgroundTransparency = 0.82
corner(sheen, 17)
new("UIGradient", sheen, {
    Rotation = 90,
    Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}),
})

-- Header: the same plain lion + Discord address + white version as SHAMAN UI.
local lion = drawLion(panel, 43)
lion.Position = UDim2.fromOffset(19,16)
label(panel, "Brand", "SHAMAN", 71, 14, 220, 21, 19, C.text, Enum.Font.GothamBold)
label(panel, "Discord", "discord.gg/shaman", 72, 36, 240, 15, 12, C.muted)
label(panel, "Version", "1881 - ∞", 72, 51, 150, 13, 10, Color3.new(1,1,1))

local pill = frame(panel, "Compatibility", 315, 22, 106, 28, stateSurface)
corner(pill, 10)
stroke(pill, stateColor, 0.72)
local indicator = frame(pill, "Dot", 11, 11, 6, 6, stateColor, 3)
corner(indicator, 3)
label(pill, "Status", matchedGame and "Supported" or "Unsupported", 23, 0, 81, 28, 10, stateColor)

local separator = frame(panel, "Separator", 19, 75, 402, 1, C.stroke)
separator.BackgroundTransparency = 0.3
local active = frame(panel, "DetectedExperience", 19, 87, 402, 62, C.raised)
corner(active, 11)
stroke(active, C.stroke, 0.15)
local stripe = frame(active, "Accent", 0, 12, 3, 38, matchedGame and C.violet or C.red, 3)
corner(stripe, 2)
label(active, "Eyebrow", "DETECTED EXPERIENCE", 15, 7, 290, 15, 10, C.dim, Enum.Font.GothamBold)
label(active, "Game", matchedGame and matchedGame.name or "Unsupported experience", 15, 27, 295, 24, 16, matchedGame and C.text or C.red, Enum.Font.GothamBold)
local auto = frame(active, "AutoBadge", 331, 18, 57, 26, C.hover, 3)
corner(auto, 7)
label(auto, "Text", "AUTO", 0, 0, 57, 26, 10, C.muted, Enum.Font.GothamBold, Enum.TextXAlignment.Center, 4)

label(panel, "ListTitle", "SUPPORTED GAMES", 20, 163, 240, 17, 10, C.muted, Enum.Font.GothamBold)
label(panel, "Count", tostring(#entries) .. " available", 311, 163, 110, 17, 11, C.dim, nil, Enum.TextXAlignment.Right)
local scroll = new("ScrollingFrame", panel, {
    Name = "Games", Position = UDim2.fromOffset(19,188), Size = UDim2.fromOffset(402,130),
    BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 3,
    ScrollBarImageColor3 = C.violet, CanvasSize = UDim2.fromOffset(0,0),
    AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollingDirection = Enum.ScrollingDirection.Y,
    ZIndex = 3,
})
new("UIPadding", scroll, {PaddingRight = UDim.new(0,7), PaddingBottom = UDim.new(0,4),PaddingTop=UDim.new(0,2)})
new("UIGridLayout", scroll, {
    CellSize = UDim2.new(0.5,-4,0,31), CellPadding = UDim2.fromOffset(7,6),
    SortOrder = Enum.SortOrder.LayoutOrder,
})
for index, info in ipairs(entries) do
    local isCurrent = info == matchedGame
    local tile = new("Frame", scroll, {
        Name = "GameCard", LayoutOrder = index, BackgroundColor3 = isCurrent and Color3.fromRGB(37,30,48) or C.raised,
        BorderSizePixel = 0, ZIndex = 4,
    })
    corner(tile,8)
    stroke(tile, isCurrent and C.violet or C.stroke, isCurrent and 0.38 or 0.28)
    local dot = frame(tile, "Dot", 10, 13, 5, 5, isCurrent and C.violet or C.dim, 5)
    corner(dot,3)
    local name = label(tile, "Name", info.name, 23,0,100,31,11, isCurrent and C.text or C.muted,
        isCurrent and Enum.Font.GothamBold or Enum.Font.GothamMedium, nil,5)
    name.Size = UDim2.new(1,-32,1,0)
end

local line = frame(panel, "FooterDivider", 19, 329, 402, 1, C.stroke)
line.BackgroundTransparency = 0.3
local status = label(panel, "ProgressStatus", "Preparing interface...", 20, 337, 343, 19, 11, C.muted)
local percent = label(panel, "ProgressPercent", "0%", 366,337,55,19,11,C.text,Enum.Font.GothamBold,Enum.TextXAlignment.Right)
local track = frame(panel, "ProgressTrack", 20, 363, 400, 5, C.hover,3)
corner(track,3)
track.ClipsDescendants = true
local fill = new("Frame", track, {
    Name = "Fill", Size = UDim2.fromScale(0,1), BackgroundColor3 = Color3.new(1,1,1),
    BorderSizePixel = 0, ZIndex = 4,
})
corner(fill,3)
local fillGradient = gradient(fill, C.violet, C.pink,0)
local value = new("NumberValue", gui, {Name="Progress", Value=0})
connect(value:GetPropertyChangedSignal("Value"), function()
    local v = math.clamp(value.Value,0,1)
    fill.Size = UDim2.fromScale(v,1)
    percent.Text = tostring(math.floor(v*100+0.5)) .. "%"
end)

local progressTween
local function setProgress(pct, text, time)
    if not alive then return end
    status.Text = text
    if progressTween then progressTween:Cancel() end
    progressTween = tween(value,time or 0.48,{Value=math.clamp(pct,0,1)})
end
local function smoothExit(callback)
    if not alive or exiting then return end
    exiting = true
    tween(blur,0.32,{Size=0})
    tween(shade,0.32,{BackgroundTransparency=1})
    tween(motionScale,0.28,{Value=0.97},Enum.EasingDirection.In)
    tween(panel,0.28,{GroupTransparency=1,Position=UDim2.new(0.5,0,0.5,8)},Enum.EasingDirection.In)
    task.wait(0.34)
    if not alive then return end
    gui:Destroy()
    if callback then callback() end
end

-- Startup stages mirror the original local compatibility check.
tween(blur,0.38,{Size=11})
tween(shade,0.38,{BackgroundTransparency=0.42})
tween(motionScale,0.38,{Value=1})
tween(panel,0.38,{GroupTransparency=0,Position=UDim2.fromScale(0.5,0.5)})
task.wait(0.4)
if not alive then return end
setProgress(0.35,"Checking experience compatibility...",0.42)
task.wait(0.55)
if not alive then return end
if matchedGame then
    setProgress(0.78,"Preparing " .. matchedGame.name .. "...",0.5)
    task.wait(0.65)
    if not alive then return end
    setProgress(1,"Launching script...",0.32)
    task.wait(0.42)
    -- Original dispatch, unchanged. Remote content is not validated here.
    smoothExit(function()
        loadstring(game:HttpGet(matchedGame.url))()
    end)
else
    fillGradient.Color = ColorSequence.new(C.red,Color3.fromRGB(196,78,112))
    status.TextColor3 = C.red
    setProgress(1,"This game is not supported yet.",0.35)
    task.wait(3.2)
    smoothExit()
end
