local MainURL = "https://raw.githubusercontent.com/DokiDokai/stuff/main/centhub"

local supportedgames = {
    [4277144950] = "LR2",
    [9030362964] = "Field Goal Simulator"
}

for i,v in next, supportedgames do
    supportedgames[i] = table.concat(v:split(' '), '-')
end

local GName = supportedgames[game.PlaceId] or supportedgames[game.GameId]

return loadstring(game:HttpGet(MainURL .. "/" .. (GName) .. ".lua", true))()
