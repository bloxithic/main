local Games = {
	[14775231477] = "https://raw.githubusercontent.com/bloxithic/notepad/refs/heads/main/BreakIn2.lua", -- Break In 2
}
return Games

for PlaceID, Execute in pairs(Games) do
    if PlaceID == game.PlaceId then
        loadstring(game:HttpGet(Execute))()
	else
		loadstring(game:HttpGet(https://raw.githubusercontent.com/bloxithic/notepad/refs/heads/main/Universal.lua))()
end
