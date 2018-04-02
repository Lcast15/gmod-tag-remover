local function spawn( Ply )
	PlyName = string.lower(Ply:Nick())
	
	Gayvers = {'trade.tf', 'poseidonservers.net', 'titan.tf', 'superiorservers.co', 'hellcase.com', 'ggs.sx', 'skinhub.com', 'pubgupgrader.gg', 'cs.money', 'bolt.gg', 'csheaven', 'pvpro.com', 'csgobig.com', 'forcedrop.net', 'csgorgb.com', 'voxel.gg'}
	
	for k,v in pairs(Gayvers) do
		if string.find(PlyName, v) ~= nil then
			print(PlyName)
			print(v)
			Ply:SetNWString("PlayerName", string.gsub(PlyName, v, ''))
			ULib.tsayError(Ply, "Your name violated our name policy, but do not fear! It has been updated to comply. Unfourtionately it lost capitilazation.")
			break
		end
	end
end
hook.Add( "PlayerInitialSpawn", "lcasttagremove", spawn )
