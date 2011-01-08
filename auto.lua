local addon = CreateFrame'Frame'

addon:RegisterEvent'PLAYER_ENTERING_WORLD'
addon:RegisterEvent'INSTANCE_ENCOUNTER_ENGAGE_UNIT'

-- Defensive coding inc.
addon:SetScript('OnEvent', function(self, event)
	if(UnitExists'boss1') then
		if(not WatchFrame.collapsed) then
			WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
		end
	elseif(WatchFrame.collapsed) then
		WatchFrame_CollapseExpandButton_OnClick(WatchFrame_CollapseExpandButton)
	end
end)
