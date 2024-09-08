local panther = {}


local function ui(title,icon,vs)

    if getgenv().pantheralr ~= nil then
        getgenv().pantheral:Destroy()
    end

	local G2L = {};

	-- StarterGui.PantherMobile
	G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
	G2L["1"]["IgnoreGuiInset"] = true;
	G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
	G2L["1"]["Name"] = [[PantherMobile]];
	G2L["1"]["ResetOnSpawn"] = false;

    getgenv().pantheralr = G2L["1"]

	-- StarterGui.PantherMobile.UI
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["ClipsDescendants"] = true;
	G2L["2"]["Size"] = UDim2.new(0, 400, 0, 240);
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[UI]];

	-- StarterGui.PantherMobile.UI.top
	G2L["3"] = Instance.new("Frame", G2L["2"]);
	G2L["3"]["BorderSizePixel"] = 0;
	G2L["3"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["3"]["Size"] = UDim2.new(1, 0, 0, 25);
	G2L["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["3"]["Name"] = [[top]];

	-- StarterGui.PantherMobile.UI.top.UICorner
	G2L["4"] = Instance.new("UICorner", G2L["3"]);
	G2L["4"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherMobile.UI.top.cover
	G2L["5"] = Instance.new("Frame", G2L["3"]);
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["5"]["Size"] = UDim2.new(1, 0, 0, 6);
	G2L["5"]["Position"] = UDim2.new(0, 0, 1, -6);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Name"] = [[cover]];

	-- StarterGui.PantherMobile.UI.top.buttons
	G2L["6"] = Instance.new("Frame", G2L["3"]);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["Size"] = UDim2.new(0, 50, 1, 0);
	G2L["6"]["Position"] = UDim2.new(1, -50, 0, 0);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Name"] = [[buttons]];
	G2L["6"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherMobile.UI.top.buttons.UIListLayout
	G2L["7"] = Instance.new("UIListLayout", G2L["6"]);
	G2L["7"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	G2L["7"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	G2L["7"]["FillDirection"] = Enum.FillDirection.Horizontal;

	-- StarterGui.PantherMobile.UI.top.buttons.minus
	G2L["8"] = Instance.new("ImageButton", G2L["6"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["AutoButtonColor"] = false;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["8"]["LayoutOrder"] = 2;
	G2L["8"]["ZIndex"] = 2;
	G2L["8"]["Size"] = UDim2.new(0, 25, 0, 25);
	G2L["8"]["Name"] = [[minus]];
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherMobile.UI.top.buttons.minus.ImageLabel
	G2L["9"] = Instance.new("ImageLabel", G2L["8"]);
	G2L["9"]["ZIndex"] = 2;
	G2L["9"]["BorderSizePixel"] = 0;
	G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["9"]["Image"] = [[rbxassetid://10734896206]];
	G2L["9"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
	G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["9"]["BackgroundTransparency"] = 1;
	G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.PantherMobile.UI.top.buttons.minus.LocalScript
	G2L["a"] = Instance.new("LocalScript", G2L["8"]);


	-- StarterGui.PantherMobile.UI.top.buttons.close
	G2L["b"] = Instance.new("ImageButton", G2L["6"]);
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["AutoButtonColor"] = false;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["b"]["LayoutOrder"] = 3;
	G2L["b"]["ZIndex"] = 2;
	G2L["b"]["Size"] = UDim2.new(0, 25, 0, 25);
	G2L["b"]["Name"] = [[close]];
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherMobile.UI.top.buttons.close.ImageLabel
	G2L["c"] = Instance.new("ImageLabel", G2L["b"]);
	G2L["c"]["ZIndex"] = 2;
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["c"]["Image"] = [[rbxassetid://10747384394]];
	G2L["c"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["BackgroundTransparency"] = 1;
	G2L["c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.PantherMobile.UI.top.buttons.close.UICorner
	G2L["d"] = Instance.new("UICorner", G2L["b"]);
	G2L["d"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherMobile.UI.top.buttons.close.later
	G2L["e"] = Instance.new("Frame", G2L["b"]);
	G2L["e"]["ZIndex"] = 2;
	G2L["e"]["BorderSizePixel"] = 0;
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["e"]["Size"] = UDim2.new(1, 0, 0, 6);
	G2L["e"]["Position"] = UDim2.new(0, 0, 1, -6);
	G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["e"]["Name"] = [[later]];

	-- StarterGui.PantherMobile.UI.top.buttons.close.Frame
	G2L["f"] = Instance.new("Frame", G2L["b"]);
	G2L["f"]["ZIndex"] = 2;
	G2L["f"]["BorderSizePixel"] = 0;
	G2L["f"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
	G2L["f"]["Size"] = UDim2.new(0, 6, 1, 0);
	G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherMobile.UI.top.buttons.close.LocalScript
	G2L["10"] = Instance.new("LocalScript", G2L["b"]);


	-- StarterGui.PantherMobile.UI.top.ICON
	G2L["11"] = Instance.new("ImageLabel", G2L["3"]);
	G2L["11"]["ZIndex"] = 2;
	G2L["11"]["BorderSizePixel"] = 0;
	G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["11"]["Image"] = [[rbxassetid://]]..icon;
	G2L["11"]["Size"] = UDim2.new(0, 20, 0, 20);
	G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["11"]["BackgroundTransparency"] = 1;
	G2L["11"]["Name"] = [[ICON]];
	G2L["11"]["Position"] = UDim2.new(0, 5, 0.5, 0);

	-- StarterGui.PantherMobile.UI.top.HEADER
	G2L["12"] = Instance.new("TextLabel", G2L["3"]);
	G2L["12"]["BorderSizePixel"] = 0;
	G2L["12"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["TextSize"] = 13;
	G2L["12"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["12"]["BackgroundTransparency"] = 1;
	G2L["12"]["RichText"] = true;
	G2L["12"]["Size"] = UDim2.new(0, 0, 1, 0);
	G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["12"]["Text"] = title;
	G2L["12"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["12"]["Name"] = [[HEADER]];
	G2L["12"]["Position"] = UDim2.new(0, 28, 0, 0);

	-- StarterGui.PantherMobile.UI.top.HEADER.Version
	G2L["13"] = Instance.new("TextLabel", G2L["12"]);
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(72, 72, 72);
	G2L["13"]["TextSize"] = 11;
	G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["BackgroundTransparency"] = 0.6;
	G2L["13"]["RichText"] = true;
	G2L["13"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["13"]["Size"] = UDim2.new(0, 0, 0, 15);
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["Text"] = vs;
	G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["13"]["Name"] = [[Version]];
	G2L["13"]["Position"] = UDim2.new(1, 5, 0.5, 0);

	-- StarterGui.PantherMobile.UI.top.HEADER.Version.UIPadding
	G2L["14"] = Instance.new("UIPadding", G2L["13"]);
	G2L["14"]["PaddingRight"] = UDim.new(0, 7);
	G2L["14"]["PaddingLeft"] = UDim.new(0, 7);

	-- StarterGui.PantherMobile.UI.top.HEADER.Version.UICorner
	G2L["15"] = Instance.new("UICorner", G2L["13"]);
	G2L["15"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.PantherMobile.UI.top.HEADER.UIPadding
	G2L["16"] = Instance.new("UIPadding", G2L["12"]);


	-- StarterGui.PantherMobile.UI.top.bar
	G2L["17"] = Instance.new("Frame", G2L["3"]);
	G2L["17"]["ZIndex"] = 2;
	G2L["17"]["BorderSizePixel"] = 0;
	G2L["17"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	G2L["17"]["Size"] = UDim2.new(1, 0, 0, 1);
	G2L["17"]["Position"] = UDim2.new(0, 0, 1, -1);
	G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["17"]["Name"] = [[bar]];

	-- StarterGui.PantherMobile.UI.UICorner
	G2L["18"] = Instance.new("UICorner", G2L["2"]);
	G2L["18"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherMobile.UI.drag
	G2L["19"] = Instance.new("LocalScript", G2L["2"]);
	G2L["19"]["Name"] = [[drag]];

	-- StarterGui.PantherMobile.UI.side
	G2L["1a"] = Instance.new("Frame", G2L["2"]);
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	G2L["1a"]["Size"] = UDim2.new(0, 120, 1, -25);
	G2L["1a"]["Position"] = UDim2.new(0, 0, 0, 25);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["Name"] = [[side]];

	-- StarterGui.PantherMobile.UI.side.UICorner
	G2L["1b"] = Instance.new("UICorner", G2L["1a"]);
	G2L["1b"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherMobile.UI.side.Frame
	G2L["1c"] = Instance.new("Frame", G2L["1a"]);
	G2L["1c"]["ZIndex"] = 2;
	G2L["1c"]["BorderSizePixel"] = 0;
	G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 6);
	G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherMobile.UI.side.Frame
	G2L["1d"] = Instance.new("Frame", G2L["1a"]);
	G2L["1d"]["ZIndex"] = 2;
	G2L["1d"]["BorderSizePixel"] = 0;
	G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(24, 24, 24);
	G2L["1d"]["Size"] = UDim2.new(0, 6, 1, 0);
	G2L["1d"]["Position"] = UDim2.new(1, -6, 0, 0);
	G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherMobile.UI.side.bar
	G2L["1e"] = Instance.new("Frame", G2L["1a"]);
	G2L["1e"]["ZIndex"] = 3;
	G2L["1e"]["BorderSizePixel"] = 0;
	G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	G2L["1e"]["Size"] = UDim2.new(0, 1, 1, 0);
	G2L["1e"]["Position"] = UDim2.new(1, -1, 0, 0);
	G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1e"]["Name"] = [[bar]];

	-- StarterGui.PantherMobile.UI.side.tabs
	G2L["1f"] = Instance.new("ScrollingFrame", G2L["1a"]);
	G2L["1f"]["Active"] = true;
	G2L["1f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
	G2L["1f"]["BorderSizePixel"] = 0;
	G2L["1f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
	G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1f"]["Name"] = [[tabs]];
	G2L["1f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
	G2L["1f"]["Size"] = UDim2.new(1, 0, 1, -35);
	G2L["1f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1f"]["ScrollBarThickness"] = 0;
	G2L["1f"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherMobile.UI.side.tabs.UIListLayout
	G2L["20"] = Instance.new("UIListLayout", G2L["1f"]);
	G2L["20"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
	G2L["20"]["Padding"] = UDim.new(0, 0);
	G2L["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

	-- StarterGui.PantherMobile.UI.side.tabs.UIPadding
	G2L["21"] = Instance.new("UIPadding", G2L["1f"]);

	-- StarterGui.PantherMobile.UI.side.User
	G2L["25"] = Instance.new("Frame", G2L["1a"]);
	G2L["25"]["ZIndex"] = 2;
	G2L["25"]["BorderSizePixel"] = 0;
	G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["25"]["Size"] = UDim2.new(1, 0, 0, 35);
	G2L["25"]["Position"] = UDim2.new(0, 0, 1, -35);
	G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["25"]["Name"] = [[User]];
	G2L["25"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherMobile.UI.side.User.HEADSHOT
	G2L["26"] = Instance.new("ImageLabel", G2L["25"]);
	G2L["26"]["BorderSizePixel"] = 0;
	G2L["26"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["26"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["26"]["Size"] = UDim2.new(0, 23, 0, 23);
	G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["26"]["Image"] = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot,Enum.ThumbnailSize.Size48x48);
	G2L["26"]["Name"] = [[HEADSHOT]];
	G2L["26"]["Position"] = UDim2.new(0, 6, 0.5, 0);

	-- StarterGui.PantherMobile.UI.side.User.HEADSHOT.UICorner
	G2L["27"] = Instance.new("UICorner", G2L["26"]);
	G2L["27"]["CornerRadius"] = UDim.new(1, 0);

	-- StarterGui.PantherMobile.UI.side.User.HEADSHOT.UIStroke
	G2L["28"] = Instance.new("UIStroke", G2L["26"]);
	G2L["28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
	G2L["28"]["Color"] = Color3.fromRGB(36, 36, 36);

	-- StarterGui.PantherMobile.UI.side.User.bar
	G2L["29"] = Instance.new("Frame", G2L["25"]);
	G2L["29"]["ZIndex"] = 2;
	G2L["29"]["BorderSizePixel"] = 0;
	G2L["29"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
	G2L["29"]["Size"] = UDim2.new(1, 0, 0, 1);
	G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["29"]["Name"] = [[bar]];

	-- StarterGui.PantherMobile.UI.side.User.USER
	G2L["2a"] = Instance.new("TextLabel", G2L["25"]);
	G2L["2a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
	G2L["2a"]["BorderSizePixel"] = 0;
	G2L["2a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2a"]["TextSize"] = 12;
	G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2a"]["BackgroundTransparency"] = 1;
	G2L["2a"]["RichText"] = true;
	G2L["2a"]["Size"] = UDim2.new(0, 74, 1, 0);
	G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2a"]["Text"] = game.Players.LocalPlayer.DisplayName;
	G2L["2a"]["Name"] = [[USER]];
	G2L["2a"]["Position"] = UDim2.new(0, 35, 0, 0);

	-- StarterGui.PantherMobile.UI.pages
	G2L["2b"] = Instance.new("Frame", G2L["2"]);
	G2L["2b"]["BorderSizePixel"] = 0;
	G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2b"]["Size"] = UDim2.new(1, -120, 1, -25);
	G2L["2b"]["Position"] = UDim2.new(0, 120, 0, 25);
	G2L["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2b"]["Name"] = [[pages]];
	G2L["2b"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherMobile.UI.UIStroke
	G2L["70"] = Instance.new("UIStroke", G2L["2"]);
	G2L["70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
	G2L["70"]["Color"] = Color3.fromRGB(51, 51, 51);

	-- StarterGui.PantherMobile.UI.top.buttons.minus.LocalScript
	local function C_a()
		local script = G2L["a"];
		local ts, i = game:GetService("TweenService"), TweenInfo.new(.1, Enum.EasingStyle.Linear)
		local hidden = false
		local ui = script:FindFirstAncestorWhichIsA("ScreenGui").UI

		script.Parent.MouseButton1Click:Connect(function()
			if hidden then 
				ts:Create(ui, i, {Size = UDim2.new(0, 400, 0, 240)}):Play()
				ts:Create(ui, i, {Position = ui.Position + UDim2.new(0, 0, 0, 110)}):Play()
				for i,v in pairs(ui:GetDescendants()) do
					if v:IsA("Frame") and v.Name == "bar" then
						v.Visible = true
					end
				end
				ui.side.User.Visible = true
				ui.top.cover.Visible = true
				script.Parent.Parent.close.later.Visible = true
			else
				ts:Create(ui, i, {Size = UDim2.new(0, 400, 0, 25)}):Play()
				ts:Create(ui, i, {Position = ui.Position + UDim2.new(0, 0, 0, -110)}):Play()
				for i,v in pairs(ui:GetDescendants()) do
					if v:IsA("Frame") and v.Name == "bar" then
						v.Visible = false
					end
				end
				ui.side.User.Visible = false
				ui.top.cover.Visible = false
				script.Parent.Parent.close.later.Visible = false
			end
			hidden = not hidden
		end)

		script.Parent.MouseEnter:Connect(function()
			script.Parent.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		end)

		script.Parent.MouseLeave:Connect(function()
			script.Parent.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		end)

	end;
	task.spawn(C_a);
	-- StarterGui.PantherMobile.UI.top.buttons.close.LocalScript
	local function C_10()
		local script = G2L["10"];
		local ts,i = game:GetService("TweenService"), TweenInfo.new(.1,Enum.EasingStyle.Linear)
		local ui = script:FindFirstAncestorWhichIsA("ScreenGui").UI

		script.Parent.MouseButton1Click:Connect(function()
			ts:Create(ui, i, {Size = UDim2.new(0, 400, 0, 25)}):Play()
			ts:Create(ui, i, {Position = ui.Position + UDim2.new(0, 0, 0, -110)}):Play()
			for i,v in pairs(ui:GetDescendants()) do
				if v:IsA("Frame") and v.Name == "bar" then
					v.Visible = false
				end
			end
			ui.side.User.Visible = false
			ui.top.cover.Visible = false
			script.Parent.Parent.close.later.Visible = false
			task.wait(.1)
			script:FindFirstAncestorWhichIsA("ScreenGui"):Destroy()
		end)

		script.Parent.MouseEnter:Connect(function()
			script.Parent.BackgroundColor3 = Color3.fromRGB(235, 62, 62)
			for i,v in pairs(script.Parent:GetChildren()) do
				if v:IsA("Frame") then
					v.BackgroundColor3 = Color3.fromRGB(235, 62, 62)
				end
			end
		end)

		script.Parent.MouseLeave:Connect(function()
			script.Parent.BackgroundColor3 = Color3.fromRGB(25,25,25)
			for i,v in pairs(script.Parent:GetChildren()) do
				if v:IsA("Frame") then
					v.BackgroundColor3 = Color3.fromRGB(25,25,25)
				end
			end
		end)
	end;
	task.spawn(C_10);
	-- StarterGui.PantherMobile.UI.drag
	local function C_19()
		local script = G2L["19"];
		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end;
	task.spawn(C_19);

	return G2L["1"], require;
end

local function loading(name,icon,vs,gvs)
	-- Instances: 37 | Scripts: 3 | Modules: 0
	local G2L = {};

	-- StarterGui.PantherLoading
	G2L["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"));
	G2L["1"]["IgnoreGuiInset"] = true;
	G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
	G2L["1"]["Name"] = [[PantherLoading]];
	G2L["1"]["ResetOnSpawn"] = false;

	-- StarterGui.PantherLoading.UI
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["2"]["ClipsDescendants"] = true;
	G2L["2"]["Size"] = UDim2.new(0, 400, 0, 240);
	G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[UI]];

	-- StarterGui.PantherLoading.UI.UICorner
	G2L["3"] = Instance.new("UICorner", G2L["2"]);
	G2L["3"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.drag
	G2L["4"] = Instance.new("LocalScript", G2L["2"]);
	G2L["4"]["Name"] = [[drag]];

	-- StarterGui.PantherLoading.UI.UIStroke
	G2L["5"] = Instance.new("UIStroke", G2L["2"]);
	G2L["5"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
	G2L["5"]["Color"] = Color3.fromRGB(51, 51, 51);

	-- StarterGui.PantherLoading.UI.top
	G2L["6"] = Instance.new("Frame", G2L["2"]);
	G2L["6"]["ZIndex"] = 2;
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["6"]["Size"] = UDim2.new(1, 0, 0, 25);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["6"]["Name"] = [[top]];
	G2L["6"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherLoading.UI.top.UICorner
	G2L["7"] = Instance.new("UICorner", G2L["6"]);
	G2L["7"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.top.buttons
	G2L["8"] = Instance.new("Frame", G2L["6"]);
	G2L["8"]["BorderSizePixel"] = 0;
	G2L["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["8"]["Size"] = UDim2.new(0, 50, 1, 0);
	G2L["8"]["Position"] = UDim2.new(1, -50, 0, 0);
	G2L["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["8"]["Name"] = [[buttons]];
	G2L["8"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherLoading.UI.top.buttons.UIListLayout
	G2L["9"] = Instance.new("UIListLayout", G2L["8"]);
	G2L["9"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	G2L["9"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
	G2L["9"]["FillDirection"] = Enum.FillDirection.Horizontal;

	-- StarterGui.PantherLoading.UI.top.buttons.close
	G2L["a"] = Instance.new("ImageButton", G2L["8"]);
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["AutoButtonColor"] = false;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(40,40,40);
	G2L["a"]["LayoutOrder"] = 3;
	G2L["a"]["ZIndex"] = 2;
	G2L["a"]["Size"] = UDim2.new(0, 25, 0, 25);
	G2L["a"]["BackgroundTransparency"] = 1;
	G2L["a"]["Name"] = [[close]];
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

	-- StarterGui.PantherLoading.UI.top.buttons.close.ImageLabel
	G2L["b"] = Instance.new("ImageLabel", G2L["a"]);
	G2L["b"]["ZIndex"] = 2;
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
	G2L["b"]["Image"] = [[rbxassetid://10734896206]];
	G2L["b"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

	-- StarterGui.PantherLoading.UI.top.buttons.close.UICorner
	G2L["c"] = Instance.new("UICorner", G2L["a"]);
	G2L["c"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.top.buttons.close.later
	G2L["d"] = Instance.new("Frame", G2L["a"]);
	G2L["d"]["ZIndex"] = 2;
	G2L["d"]["BorderSizePixel"] = 0;
	G2L["d"]["BackgroundColor3"] = Color3.fromRGB(40,40,40);
	G2L["d"]["Size"] = UDim2.new(1, 0, 0, 6);
	G2L["d"]["Position"] = UDim2.new(0, 0, 1, -6);
	G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["d"]["Name"] = [[later]];
	G2L["d"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherLoading.UI.top.buttons.close.Frame
	G2L["e"] = Instance.new("Frame", G2L["a"]);
	G2L["e"]["ZIndex"] = 2;
	G2L["e"]["BorderSizePixel"] = 0;
	G2L["e"]["BackgroundColor3"] = Color3.fromRGB(40,40,40);
	G2L["e"]["Size"] = UDim2.new(0, 6, 1, 0);
	G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["e"]["BackgroundTransparency"] = 1;

	-- StarterGui.PantherLoading.UI.top.buttons.close.LocalScript
	G2L["f"] = Instance.new("LocalScript", G2L["a"]);


	-- StarterGui.PantherLoading.UI.top.HEADER
	G2L["13"] = Instance.new("TextLabel", G2L["6"]);
	G2L["13"]["ZIndex"] = 2;
	G2L["13"]["BorderSizePixel"] = 0;
	G2L["13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["TextSize"] = 13;
	G2L["13"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["13"]["BackgroundTransparency"] = 1;
	G2L["13"]["RichText"] = true;
	G2L["13"]["Size"] = UDim2.new(0, 0, 1, 0);
	G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["13"]["Text"] = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
	G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["13"]["Name"] = [[HEADER]];
	G2L["13"]["Position"] = UDim2.new(0, 10, 0, 0);

	-- StarterGui.PantherLoading.UI.top.HEADER.Version
	G2L["14"] = Instance.new("TextLabel", G2L["13"]);
	G2L["14"]["ZIndex"] = 2;
	G2L["14"]["BorderSizePixel"] = 0;
	G2L["14"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["14"]["BackgroundColor3"] = Color3.fromRGB(72, 72, 72);
	G2L["14"]["TextSize"] = 11;
	G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["14"]["BackgroundTransparency"] = 0.6;
	G2L["14"]["RichText"] = true;
	G2L["14"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["14"]["Size"] = UDim2.new(0, 0, 0, 15);
	G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["14"]["Text"] = [[v1.0.0]];
	G2L["14"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["14"]["Name"] = [[Version]];
	G2L["14"]["Position"] = UDim2.new(1, 5, 0.5, 0);

	-- StarterGui.PantherLoading.UI.top.HEADER.Version.UIPadding
	G2L["15"] = Instance.new("UIPadding", G2L["14"]);
	G2L["15"]["PaddingRight"] = UDim.new(0, 7);
	G2L["15"]["PaddingLeft"] = UDim.new(0, 7);

	-- StarterGui.PantherLoading.UI.top.HEADER.Version.UICorner
	G2L["16"] = Instance.new("UICorner", G2L["14"]);
	G2L["16"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.PantherLoading.UI.top.HEADER.UIPadding
	G2L["17"] = Instance.new("UIPadding", G2L["13"]);


	-- StarterGui.PantherLoading.UI.game
	G2L["18"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["18"]["BorderSizePixel"] = 0;
	G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["18"]["Image"] = "https://assetgame.roblox.com/Game/Tools/ThumbnailAsset.ashx?aid="..game.PlaceId.."&fmt=png&wd=420&ht=420";
	G2L["18"]["Size"] = UDim2.new(1, 0, 1, 0);
	G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["18"]["BackgroundTransparency"] = 1;
	G2L["18"]["Name"] = [[game]];

	-- StarterGui.PantherLoading.UI.game.UICorner
	G2L["19"] = Instance.new("UICorner", G2L["18"]);
	G2L["19"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.shadow
	G2L["1a"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["1a"]["BorderSizePixel"] = 0;
	G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1a"]["Image"] = [[rbxassetid://105037838520665]];
	G2L["1a"]["Size"] = UDim2.new(1, 0, 0, 330);
	G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1a"]["BackgroundTransparency"] = 1;
	G2L["1a"]["Name"] = [[shadow]];
	G2L["1a"]["Position"] = UDim2.new(0, 0, 0, -132);

	-- StarterGui.PantherLoading.UI.bottom
	G2L["1b"] = Instance.new("Frame", G2L["2"]);
	G2L["1b"]["BorderSizePixel"] = 0;
	G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["1b"]["Size"] = UDim2.new(1, 0, 0, 42);
	G2L["1b"]["Position"] = UDim2.new(0, 0, 1, -42);
	G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1b"]["Name"] = [[bottom]];

	-- StarterGui.PantherLoading.UI.bottom.UICorner
	G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
	G2L["1c"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.bottom.bottom
	G2L["1d"] = Instance.new("Frame", G2L["1b"]);
	G2L["1d"]["BorderSizePixel"] = 0;
	G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
	G2L["1d"]["Size"] = UDim2.new(1, 0, 0, 7);
	G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1d"]["Name"] = [[bottom]];

	-- StarterGui.PantherLoading.UI.bottom.ICON
	G2L["1e"] = Instance.new("ImageLabel", G2L["1b"]);
	G2L["1e"]["ZIndex"] = 2;
	G2L["1e"]["BorderSizePixel"] = 0;
	G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1e"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["1e"]["Image"] = "rbxassetid://"..icon;
	G2L["1e"]["Size"] = UDim2.new(0, 30, 0, 30);
	G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1e"]["BackgroundTransparency"] = 1;
	G2L["1e"]["Name"] = [[ICON]];
	G2L["1e"]["Position"] = UDim2.new(0, 5, 0.5, 0);

	-- StarterGui.PantherLoading.UI.bottom.HEADER
	G2L["1f"] = Instance.new("TextLabel", G2L["1b"]);
	G2L["1f"]["BorderSizePixel"] = 0;
	G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1f"]["TextSize"] = 13;
	G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
	G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["1f"]["BackgroundTransparency"] = 1;
	G2L["1f"]["RichText"] = true;
	G2L["1f"]["Size"] = UDim2.new(0, 0, 1, 0);
	G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["1f"]["Text"] = name;
	G2L["1f"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["1f"]["Name"] = [[HEADER]];
	G2L["1f"]["Position"] = UDim2.new(0, 40, 0, 0);

	-- StarterGui.PantherLoading.UI.bottom.HEADER.Version
	G2L["20"] = Instance.new("TextLabel", G2L["1f"]);
	G2L["20"]["BorderSizePixel"] = 0;
	G2L["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
	G2L["20"]["BackgroundColor3"] = Color3.fromRGB(72, 72, 72);
	G2L["20"]["TextSize"] = 11;
	G2L["20"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
	G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["20"]["BackgroundTransparency"] = 0.6;
	G2L["20"]["RichText"] = true;
	G2L["20"]["AnchorPoint"] = Vector2.new(0, 0.5);
	G2L["20"]["Size"] = UDim2.new(0, 0, 0, 15);
	G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["20"]["Text"] = vs;
	G2L["20"]["AutomaticSize"] = Enum.AutomaticSize.X;
	G2L["20"]["Name"] = [[Version]];
	G2L["20"]["Position"] = UDim2.new(1, 5, 0.5, 0);

	-- StarterGui.PantherLoading.UI.bottom.HEADER.Version.UIPadding
	G2L["21"] = Instance.new("UIPadding", G2L["20"]);
	G2L["21"]["PaddingRight"] = UDim.new(0, 7);
	G2L["21"]["PaddingLeft"] = UDim.new(0, 7);

	-- StarterGui.PantherLoading.UI.bottom.HEADER.Version.UICorner
	G2L["22"] = Instance.new("UICorner", G2L["20"]);
	G2L["22"]["CornerRadius"] = UDim.new(0, 4);

	-- StarterGui.PantherLoading.UI.bottom.HEADER.UIPadding
	G2L["23"] = Instance.new("UIPadding", G2L["1f"]);


	-- StarterGui.PantherLoading.UI.shadow
	G2L["24"] = Instance.new("ImageLabel", G2L["2"]);
	G2L["24"]["BorderSizePixel"] = 0;
	G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["24"]["Image"] = [[rbxassetid://105037838520665]];
	G2L["24"]["Size"] = UDim2.new(1.005, 0, 0, 197);
	G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["24"]["BackgroundTransparency"] = 1;
	G2L["24"]["Rotation"] = 180;
	G2L["24"]["Name"] = [[shadow]];

	-- StarterGui.PantherLoading.UI.shadow.UICorner
	G2L["25"] = Instance.new("UICorner", G2L["24"]);
	G2L["25"]["CornerRadius"] = UDim.new(0, 9);

	-- StarterGui.PantherLoading.UI.drag
	local function C_4()
		local script = G2L["4"];
		local UserInputService = game:GetService("UserInputService")

		local gui = script.Parent

		local dragging
		local dragInput
		local dragStart
		local startPos

		local function update(input)
			local delta = input.Position - dragStart
			gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input)
			end
		end)
	end;
	task.spawn(C_4);
	-- StarterGui.PantherLoading.UI.top.buttons.close.LocalScript
	local function C_f()
		local script = G2L["f"];
		local ts,i = game:GetService("TweenService"), TweenInfo.new(.1,Enum.EasingStyle.Linear)
		local ui = script:FindFirstAncestorWhichIsA("ScreenGui").UI

		script.Parent.MouseButton1Click:Connect(function()
			ui.Visible = false
		end)

		script.Parent.MouseEnter:Connect(function()
			script.Parent.BackgroundTransparency = 0
			for i,v in pairs(script.Parent:GetChildren()) do
				if v:IsA("Frame") then
					v.BackgroundTransparency = 0
				end
			end
		end)

		script.Parent.MouseLeave:Connect(function()
			script.Parent.BackgroundTransparency = 1
			for i,v in pairs(script.Parent:GetChildren()) do
				if v:IsA("Frame") then
					v.BackgroundTransparency = 1
				end
			end
		end)
	end;
	task.spawn(C_f);

	return G2L["1"];
end

function panther:Window(config)
	local funcs = {}
	local colors = config.colors
	local function openui()
		local UI = ui(config.title,config.icon,config.version).UI
		table.remove(funcs,1)
		
		function funcs:NewTab(config)
			local tfuncs = {}
			local tab = Instance.new("ImageButton", UI.side.tabs);
			tab["BorderSizePixel"] = 0;
			tab["AutoButtonColor"] = false;
			tab["ZIndex"] = 2;
			tab["BackgroundColor3"] = Color3.fromRGB(25,25,25);
			tab["Size"] = UDim2.new(1, 0, 0, 27);
			tab["Name"] = config.name;
			tab["BorderColor3"] = Color3.fromRGB(0, 0, 0);

			local icon = Instance.new("ImageLabel", tab);
			icon["ZIndex"] = 2;
			icon["BorderSizePixel"] = 0;
			icon["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			icon["AnchorPoint"] = Vector2.new(0, 0.5);
			icon["Image"] = [[rbxassetid://]]..config.icon;
			icon["Size"] = UDim2.new(0, 16, 0, 16);
			icon["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			icon["ImageColor3"] = Color3.fromRGB(200,200,200);
			icon["BackgroundTransparency"] = 1;
			icon["Name"] = [[ICON]];
			icon["Position"] = UDim2.new(0, 6, 0.5, 0);

			local header  = Instance.new("TextLabel", tab);
			header["TextTruncate"] = Enum.TextTruncate.AtEnd;
			header["ZIndex"] = 2;
			header["BorderSizePixel"] = 0;
			header["TextXAlignment"] = Enum.TextXAlignment.Left;
			header["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			header["TextSize"] = 12;
			header["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
			header["TextColor3"] = Color3.fromRGB(200,200,200);
			header["BackgroundTransparency"] = 1;
			header["RichText"] = true;
			header["Size"] = UDim2.new(1, -26, 1, 0);
			header["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			header["Text"] = config.name;
			header["Name"] = [[HEADER]];
			header["Position"] = UDim2.new(0, 26, 0, 0);
			
			local page = Instance.new("Frame", UI.pages);
			page["BorderSizePixel"] = 0;
			page["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			page["Size"] = UDim2.new(1, 0, 1, 0);
			page["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			page["Name"] = config.name;
			page["Visible"] = false;
			page["BackgroundTransparency"] = 1;

			local tabs = Instance.new("ScrollingFrame", page);
			tabs["Active"] = true;
			tabs["ScrollingDirection"] = Enum.ScrollingDirection.Y;
			tabs["BorderSizePixel"] = 0;
			tabs["CanvasSize"] = UDim2.new(0, 0, 0, 0);
			tabs["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			tabs["Name"] = [[tabs]];
			tabs["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
			tabs["Size"] = UDim2.new(1, 0, 1, 0);
			tabs["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			tabs["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			tabs["ScrollBarThickness"] = 0;
			tabs["BackgroundTransparency"] = 1;

			local list = Instance.new("UIListLayout", tabs);
			list["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			list["Padding"] = UDim.new(0, 6);
			list["SortOrder"] = Enum.SortOrder.LayoutOrder;

			local padding = Instance.new("UIPadding", tabs);
			padding["PaddingTop"] = UDim.new(0, 7);
			padding["PaddingRight"] = UDim.new(0, 7);
			padding["PaddingLeft"] = UDim.new(0, 7);
			padding["PaddingBottom"] = UDim.new(0, 7);
			
			if config.selected then
				page["Visible"] = true;
				tab["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
				header["TextColor3"] = Color3.fromRGB(255, 255, 255);
				icon["ImageColor3"] = Color3.fromRGB(255,255,255);
			end
			
			tab.MouseButton1Click:Connect(function()
				for i,v in pairs(UI.side.tabs:GetChildren()) do
					if v:IsA("ImageButton") then
						if v ~= tab then
							v["BackgroundColor3"] = Color3.fromRGB(25,25,25);
							v["HEADER"]["TextColor3"] = Color3.fromRGB(200,200,200);
							v["ICON"]["ImageColor3"] = Color3.fromRGB(200,200,200);
							UI.pages[v.Name].Visible = false;
						else
							v["BackgroundColor3"] = Color3.fromRGB(30,30,30);
							v["HEADER"]["TextColor3"] = Color3.fromRGB(255,255,255);
							v["ICON"]["ImageColor3"] = Color3.fromRGB(255,255,255);
							UI.pages[v.Name].Visible = true;
						end
					end
				end
			end)
			
			function tfuncs.Button(config)
				
				local button = Instance.new("ImageButton", tabs);
				button["BorderSizePixel"] = 0;
				button["AutoButtonColor"] = false;
				button["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
				button["Size"] = UDim2.new(1, 0, 0, 27);
				button["Name"] = [[button]];
				button["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local uicorner = Instance.new("UICorner", button);
				uicorner["CornerRadius"] = UDim.new(0, 3);

				local header = Instance.new("TextLabel", button);
				header["TextTruncate"] = Enum.TextTruncate.AtEnd;
				header["BorderSizePixel"] = 0;
				header["TextXAlignment"] = Enum.TextXAlignment.Left;
				header["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				header["TextSize"] = 12;
				header["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				header["TextColor3"] = Color3.fromRGB(255, 255, 255);
				header["BackgroundTransparency"] = 1;
				header["RichText"] = true;
				header["Size"] = UDim2.new(1, -30, 1, 0);
				header["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				header["Text"] = config.name;
				header["Name"] = [[HEADER]];
				header["Position"] = UDim2.new(0, 5, 0, 0);

				local uistroke = Instance.new("UIStroke", button);
				uistroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				uistroke["Color"] = Color3.fromRGB(43, 43, 43);

				local icon = Instance.new("ImageLabel", button);
				icon["ZIndex"] = 2;
				icon["BorderSizePixel"] = 0;
				icon["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				icon["AnchorPoint"] = Vector2.new(0, 0.5);
				icon["Image"] = [[rbxassetid://94750768982773]];
				icon["Size"] = UDim2.new(0, 16, 0, 16);
				icon["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				icon["BackgroundTransparency"] = 1;
				icon["Name"] = [[ICON]];
				icon["Position"] = UDim2.new(1, -22, 0.5, 0);
				
				button.MouseEnter:Connect(function()
					button.BackgroundColor3 = Color3.fromRGB(40,40,40)
				end)
				button.MouseLeave:Connect(function()
					button.BackgroundColor3 = Color3.fromRGB(25,25,25)
				end)
				button.MouseButton1Click:Connect(config.Callback)
			end
			
			function tfuncs.Toggle(config)
				local toggle = Instance.new("ImageButton", tabs);
				toggle["BorderSizePixel"] = 0;
				toggle["AutoButtonColor"] = false;
				toggle["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
				toggle["Size"] = UDim2.new(1, 0, 0, 27);
				toggle["Name"] = config.name;
				toggle["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local corner = Instance.new("UICorner", toggle);
				corner["CornerRadius"] = UDim.new(0, 3);

				local header = Instance.new("TextLabel", toggle);
				header["TextTruncate"] = Enum.TextTruncate.AtEnd;
				header["BorderSizePixel"] = 0;
				header["TextXAlignment"] = Enum.TextXAlignment.Left;
				header["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				header["TextSize"] = 12;
				header["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				header["TextColor3"] = Color3.fromRGB(255, 255, 255);
				header["BackgroundTransparency"] = 1;
				header["RichText"] = true;
				header["Size"] = UDim2.new(1, -30, 1, 0);
				header["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				header["Text"] = config.name;
				header["Name"] = [[HEADER]];
				header["Position"] = UDim2.new(0, 5, 0, 0);

				local stroke1 = Instance.new("UIStroke", toggle);
				stroke1["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke1["Color"] = Color3.fromRGB(43, 43, 43);

				local frame1 = Instance.new("Frame", toggle);
				frame1["BorderSizePixel"] = 0;
				frame1["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
				frame1["AnchorPoint"] = Vector2.new(0, 0.5);
				frame1["Size"] = UDim2.new(0, 17, 0, 17);
				frame1["Position"] = UDim2.new(1, -23, 0.5, 0);
				frame1["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local stroke2 = Instance.new("UIStroke", frame1);
				stroke2["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke2["Color"] = Color3.fromRGB(35, 35, 35);

				local corner1 = Instance.new("UICorner", frame1);
				corner1["CornerRadius"] = UDim.new(0, 3);

				local frame2 = Instance.new("Frame", frame1);
				frame2["BorderSizePixel"] = 0;
				frame2["BackgroundColor3"] = colors.toggle;
				frame2["Size"] = UDim2.new(0, 17, 0, 17);
				frame2["Visible"] = false;
				frame2["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local corner3 = Instance.new("UICorner", frame2);
				corner3["CornerRadius"] = UDim.new(0, 3);

				local icon = Instance.new("ImageLabel", frame2);
				icon["ZIndex"] = 2;
				icon["BorderSizePixel"] = 0;
				icon["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				icon["ImageColor3"] = Color3.fromRGB(21, 21, 21);
				icon["AnchorPoint"] = Vector2.new(0.5, 0.5);
				icon["Image"] = [[rbxassetid://10709790644]];
				icon["Size"] = UDim2.new(0.7, 0, 0.7, 0);
				icon["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				icon["BackgroundTransparency"] = 1;
				icon["Name"] = [[ICON]];
				icon["Position"] = UDim2.new(0.5, 0, 0.5, 0);
				
				if config.enabled then
					frame2.Visible = true
					config.Callback(config.enabled)
				end
				toggle.MouseEnter:Connect(function()
					toggle.BackgroundColor3 = Color3.fromRGB(40,40,40)
				end)
				toggle.MouseLeave:Connect(function()
					toggle.BackgroundColor3 = Color3.fromRGB(25,25,25)
				end)
				toggle.MouseButton1Click:Connect(function()
					config.Callback(not config.enabled)
					config.enabled = not config.enabled
					frame2.Visible = config.enabled
				end)
			end
			
			function tfuncs.Input(config)
				local input = Instance.new("ImageButton", tabs);
				input["BorderSizePixel"] = 0;
				input["AutoButtonColor"] = false;
				input["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
				input["Size"] = UDim2.new(1, 0, 0, 27);
				input["Name"] = config.name;
				input["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local corner1 = Instance.new("UICorner", input);
				corner1["CornerRadius"] = UDim.new(0, 3);

				local header = Instance.new("TextLabel", input);
				header["TextTruncate"] = Enum.TextTruncate.AtEnd;
				header["BorderSizePixel"] = 0;
				header["TextXAlignment"] = Enum.TextXAlignment.Left;
				header["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				header["TextSize"] = 12;
				header["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				header["TextColor3"] = Color3.fromRGB(255, 255, 255);
				header["BackgroundTransparency"] = 1;
				header["RichText"] = true;
				header["Size"] = UDim2.new(1, -60, 1, 0);
				header["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				header["Text"] = config.name;
				header["Name"] = [[HEADER]];
				header["Position"] = UDim2.new(0, 5, 0, 0);

				local stroke1 = Instance.new("UIStroke", input);
				stroke1["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke1["Color"] = Color3.fromRGB(43, 43, 43);

				local frame1 = Instance.new("Frame", input);
				frame1["BorderSizePixel"] = 0;
				frame1["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
				frame1["AnchorPoint"] = Vector2.new(0, 0.5);
				frame1["Size"] = UDim2.new(0, 60, 0, 17);
				frame1["Position"] = UDim2.new(1, -65, 0.5, 0);
				frame1["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local stroke2 = Instance.new("UIStroke", frame1);
				stroke2["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke2["Color"] = Color3.fromRGB(35, 35, 35);

				local corner2 = Instance.new("UICorner", frame1);
				corner2["CornerRadius"] = UDim.new(0, 5);

				local textbox = Instance.new("TextBox", frame1);
				textbox["TextColor3"] = Color3.fromRGB(255, 255, 255);
				textbox["BorderSizePixel"] = 0;
				textbox["TextWrapped"] = true;
				textbox["TextSize"] = 10;
				textbox["TextScaled"] = true;
				textbox["ClearTextOnFocus"] = config.Clear;
				textbox["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				textbox["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				textbox["PlaceholderText"] = [[...]];
				textbox["Size"] = UDim2.new(1, -10, 1, 0);
				textbox["Position"] = UDim2.new(0, 5, 0, 0);
				textbox["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				textbox["Text"] = [[]];
				textbox["BackgroundTransparency"] = 1;

				local con = Instance.new("UITextSizeConstraint", textbox);
				con["MaxTextSize"] = 10;
				
				input.MouseEnter:Connect(function()
					input.BackgroundColor3 = Color3.fromRGB(40,40,40)
				end)
				input.MouseLeave:Connect(function()
					input.BackgroundColor3 = Color3.fromRGB(25,25,25)
				end)
				input.MouseButton1Click:Connect(function()
					textbox:CaptureFocus()
				end)
				textbox.FocusLost:Connect(function(enterPressed)
					if enterPressed then
						if config.type == "string" then
							config.Callback(textbox.Text)
						else
							config.Callback(tonumber(textbox.Text))
						end
					end
				end)
			end
			
			function tfuncs.Dropdown(config)
				local dropdown = Instance.new("Frame", tabs);
				dropdown["BorderSizePixel"] = 0;
				dropdown["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				dropdown["AutomaticSize"] = Enum.AutomaticSize.Y;
				dropdown["Size"] = UDim2.new(1, 0, 0, 27);
				dropdown["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				dropdown["Name"] = config.name;
				dropdown["BackgroundTransparency"] = 1;

				local button = Instance.new("ImageButton", dropdown);
				button["BorderSizePixel"] = 0;
				button["AutoButtonColor"] = false;
				button["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
				button["Size"] = UDim2.new(1, 0, 0, 27);
				button["Name"] = config.name;
				button["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local corner1 = Instance.new("UICorner", button);
				corner1["CornerRadius"] = UDim.new(0, 3);

				local header1 = Instance.new("TextLabel", button);
				header1["TextTruncate"] = Enum.TextTruncate.AtEnd;
				header1["BorderSizePixel"] = 0;
				header1["TextXAlignment"] = Enum.TextXAlignment.Left;
				header1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				header1["TextSize"] = 12;
				header1["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
				header1["TextColor3"] = Color3.fromRGB(255, 255, 255);
				header1["BackgroundTransparency"] = 1;
				header1["RichText"] = true;
				header1["Size"] = UDim2.new(1, -30, 1, 0);
				header1["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				header1["Text"] = config.name;
				header1["Name"] = [[HEADER]];
				header1["Position"] = UDim2.new(0, 5, 0, 0);

				local stroke1 = Instance.new("UIStroke", button);
				stroke1["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke1["Color"] = Color3.fromRGB(43, 43, 43);

				local icon = Instance.new("ImageLabel", button);
				icon["ZIndex"] = 2;
				icon["BorderSizePixel"] = 0;
				icon["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				icon["AnchorPoint"] = Vector2.new(0, 0.5);
				icon["Image"] = [[rbxassetid://10709790948]];
				icon["Size"] = UDim2.new(0, 16, 0, 16);
				icon["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				icon["BackgroundTransparency"] = 1;
				icon["Rotation"] = 180;
				icon["Name"] = [[ICON]];
				icon["Position"] = UDim2.new(1, -22, 0.5, 0);

				local frame1 = Instance.new("Frame", button);
				frame1["Visible"] = false;
				frame1["BorderSizePixel"] = 0;
				frame1["BackgroundColor3"] = Color3.fromRGB(22, 22, 22);
				frame1["AutomaticSize"] = Enum.AutomaticSize.Y;
				frame1["Size"] = UDim2.new(1, 0, 0, 0);
				frame1["Position"] = UDim2.new(0, 0, 0, 25);
				frame1["BorderColor3"] = Color3.fromRGB(0, 0, 0);

				local scroll = Instance.new("ScrollingFrame", frame1);
				scroll["Active"] = true;
				scroll["ScrollingDirection"] = Enum.ScrollingDirection.X;
				scroll["BorderSizePixel"] = 0;
				scroll["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				scroll["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
				scroll["AutomaticSize"] = Enum.AutomaticSize.Y;
				scroll["Size"] = UDim2.new(1, 0, 0, 0);
				scroll["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
				scroll["Position"] = UDim2.new(0, 0, 0, 3);
				scroll["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				scroll["ScrollBarThickness"] = 0;
				scroll["BackgroundTransparency"] = 1;
				
				local list = Instance.new("UIListLayout", scroll);
				list.Padding = UDim.new(0,5)
				list["SortOrder"] = Enum.SortOrder.LayoutOrder;

				local padding = Instance.new("UIPadding", scroll);
				padding["PaddingTop"] = UDim.new(0, 5);
				padding["PaddingRight"] = UDim.new(0, 5);
				padding["PaddingLeft"] = UDim.new(0, 5);
				padding["PaddingBottom"] = UDim.new(0, 5);

				local stroke3 = Instance.new("UIStroke", frame1);
				stroke3["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
				stroke3["Color"] = Color3.fromRGB(43, 43, 43);

				local frame2 = Instance.new("Frame", frame1);
				frame2["BorderSizePixel"] = 0;
				frame2["BackgroundColor3"] = Color3.fromRGB(22, 22, 22);
				frame2["Size"] = UDim2.new(1, 0, 0, 5);
				frame2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				
				local corner2 = Instance.new("UICorner", frame1);
				corner2["CornerRadius"] = UDim.new(0, 3);

				local frame3 = Instance.new("Frame", button);
				frame3["Visible"] = false;
				frame3["BorderSizePixel"] = 0;
				frame3["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
				frame3["Size"] = UDim2.new(1, 0, 0, 5);
				frame3["Position"] = UDim2.new(0, 0, 1, -5);
				frame3["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				
				
				local down,selected = false,{}
				button.MouseEnter:Connect(function()
					frame3.BackgroundColor3 = Color3.fromRGB(40,40,40)
					button.BackgroundColor3 = Color3.fromRGB(40,40,40)
				end)
				button.MouseLeave:Connect(function()
					frame3.BackgroundColor3 = Color3.fromRGB(25,25,25)
					button.BackgroundColor3 = Color3.fromRGB(25,25,25)
				end)
				button.MouseButton1Click:Connect(function()
					if down then
						icon.Rotation = 180
					else
						icon.Rotation = 0
					end
					frame3.Visible = not down
					frame1.Visible = not down
					down = not down
				end)
				
				local function a()
					for i,v in pairs(config.items) do
						local option = Instance.new("ImageButton", scroll);
						option["BorderSizePixel"] = 0;
						option["AutoButtonColor"] = false;
						option["BackgroundColor3"] = Color3.fromRGB(25, 25, 25);
						option["Size"] = UDim2.new(1, 0, 0, 27);
						option["Name"] = v;
						option["BorderColor3"] = Color3.fromRGB(0, 0, 0);

						local header2 = Instance.new("TextLabel", option);
						header2["TextTruncate"] = Enum.TextTruncate.AtEnd;
						header2["BorderSizePixel"] = 0;
						header2["TextXAlignment"] = Enum.TextXAlignment.Left;
						header2["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
						header2["TextSize"] = 12;
						header2["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
						header2["TextColor3"] = Color3.fromRGB(255, 255, 255);
						header2["BackgroundTransparency"] = 1;
						header2["RichText"] = true;
						header2["Size"] = UDim2.new(1, -5, 1, 0);
						header2["BorderColor3"] = Color3.fromRGB(0, 0, 0);
						header2["Text"] = v;
						header2["Name"] = [[HEADER]];
						header2["Position"] = UDim2.new(0, 5, 0, 0);

						local stroke2 = Instance.new("UIStroke", option);
						stroke2["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
						stroke2["Color"] = Color3.fromRGB(36, 36, 36);

						local corner3 = Instance.new("UICorner", option);
						corner3["CornerRadius"] = UDim.new(0, 3);

						option.MouseEnter:Connect(function()
							if not table.find(selected,v) then
								option.BackgroundColor3 = Color3.fromRGB(30,30,30)
							end
						end)
						option.MouseLeave:Connect(function()
							if not table.find(selected,v) then
								option.BackgroundColor3 = Color3.fromRGB(25,25,25)
							end
						end)
						option.MouseButton1Click:Connect(function()
							if config.multiselect == true then
								if not table.find(selected,v) then
									option.BackgroundColor3 = Color3.fromRGB(36,36,36)
									table.insert(selected,v)
								else
									option.BackgroundColor3 = Color3.fromRGB(25,25,25)
									table.remove(selected,v)
								end
								config.Callback(selected)
							else
								for i,v in pairs(scroll:GetChildren()) do
									if v:IsA("ImageButton") then
										v.BackgroundColor3 = Color3.fromRGB(25,25,25)
									end
								end
								selected = {v}
								option.BackgroundColor3 = Color3.fromRGB(36,36,36)
								config.Callback(v)
							end
						end)
					end
				end
				a()
				
				local dfuncs = {}
				
				function dfuncs:Edit(nconfg)
					if nconfg.name then
						header1["Text"] = config.name;
						button["Name"] = config.name;
						dropdown["Name"] = config.name;
					end
					if nconfg.multiselect then
						config.multiselect = nconfg.multiselect
					end
					if nconfg.items then
						selected = {}
						config.items = nconfg.item
						for i,v in pairs(scroll:GetChildren()) do
							if v:IsA("ImageButton") then
								v:Destroy()
							end
						end
						a()
					end
				end
				
				return dfuncs
			end
			
			function tfuncs:Label(txt)
				local Label = Instance.new("TextLabel",tabs)
				Label.Name = "Label"
				Label.BackgroundColor3 = Color3.new(1, 1, 1)
				Label.BackgroundTransparency = 1
				Label.BorderColor3 = Color3.new(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 28, 0, 0)
				Label.Size = UDim2.new(1, 0, 0, 30)
				Label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
				Label.Text = txt
				Label.TextColor3 = Color3.new(1, 1, 1)
				Label.TextSize = 14
				Label.TextXAlignment = Enum.TextXAlignment.Left
				local f = {}
				function f:Edit(txt)
					Label.Text = txt
				end
				return f
			end
			
			function tfuncs:Info(txt)
				local info = Instance.new("Frame", tabs)
				local UICorner = Instance.new("UICorner")
				local Label = Instance.new("TextLabel")
				local ImageLabel = Instance.new("ImageLabel")
				local u = Instance.new("UIStroke")

				info.Name = "info"
				info.BackgroundColor3 = Color3.new(0.117647, 0.219608, 0.356863)
				info.BorderColor3 = Color3.new(0, 0, 0)
				info.BorderSizePixel = 0
				info.Size = UDim2.new(1, 0, 0, 30)

				UICorner.Parent = info
				UICorner.CornerRadius = UDim.new(0, 4)

				Label.Name = "Label"
				Label.Parent = info
				Label.BackgroundColor3 = Color3.new(1, 1, 1)
				Label.BackgroundTransparency = 1
				Label.BorderColor3 = Color3.new(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Position = UDim2.new(0, 32, 0, 0)
				Label.Size = UDim2.new(0, 226, 1, 0)
				Label.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
				Label.Text = txt
				Label.TextColor3 = Color3.new(1, 1, 1)
				Label.TextSize = 14
				Label.TextXAlignment = Enum.TextXAlignment.Left

				ImageLabel.Parent = info
				ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
				ImageLabel.BackgroundColor3 = Color3.new(0.164706, 0.313726, 0.505882)
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Position = UDim2.new(0, 7, 0.5, 0)
				ImageLabel.Size = UDim2.new(0, 18, 0, 18)
				ImageLabel.Image = "rbxassetid://10723415903"
				ImageLabel.ImageColor3 = Color3.new(0.298039, 0.572549, 0.905882)
				
				u.Parent = info
				u.Color = Color3.fromRGB(53, 104, 162)
				u.Thickness = 1.6
				
				local f = {}
				function f:Edit(txt)
					Label.Text = txt
				end
				return f
			end
			
			return tfuncs
		end
		
		return funcs
	end

	function funcs.openloader()
		local loader, lfuncs = loading(config.title,config.icon,config.version,config.gamevs), {}
		local a
		function lfuncs.OnExit(callback)
			a = callback
		end
		function lfuncs.Finish()
			loader:Destroy()
			a()
			openui()
		end
		return lfuncs
	end

	return funcs
end

return panther
