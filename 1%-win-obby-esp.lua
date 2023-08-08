_G.BadESP = true

while true do
	if _G.BadESP == true then
		for i,v in pairs(workspace.Bridge:GetChildren()) do
			if string.find(v.Name, 'Kill') then
				v.Color = Color3.fromRGB(255, 75, 62)
				v.Transparency = 0
			end
		
			if string.find(v.Name, 'Win') then
				v.Color = Color3.fromRGB(92, 255, 138)
				v.Transparency = 0
			end
		end
	end
	task.wait()
end
