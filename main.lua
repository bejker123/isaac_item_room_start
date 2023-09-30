local BItemRoomStart = RegisterMod("Bejker: Item Room Start", 1);

-- FIXME: !!!
function BItemRoomStart:OnGameStart(IsContinued)
	if ((Game():GetLevel():GetStage() == 1) and (Game():IsGreedMode() == false)) and not IsContinued then
		local game = Game()
		local level = game:GetLevel()
		local RoomIndex = level:QueryRoomTypeIndex(RoomType.ROOM_TREASURE, false, RNG())
		Game():ChangeRoom(RoomIndex, -1)
	end
end

BItemRoomStart:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, BItemRoomStart.OnGameStart)