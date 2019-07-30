local function InputHandler(event)
	if not event.PlayerNumber or not event.button then
		return false
	end

	local state = "Off"
	if event.type ~= "InputEventType_Release" then
		state = "On"
	end

	if event.DeviceInput.button == "DeviceButton_escape" then
		SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen")
	end

	MESSAGEMAN:Broadcast(ToEnumShortString(event.PlayerNumber) .. event.button .. state)
	return false
end

local af = Def.ActorFrame {
	OnCommand=function(self)
		SCREENMAN:GetTopScreen():AddInputCallback(InputHandler)
	end,
	OffCommand=function(self) 
		self:sleep(0.4)
	end;

	Def.DeviceList {
		Font=THEME:GetPathF("","_miso"),
		InitCommand=function(self)
			self:xy(_screen.cx,_screen.h-60):zoom(0.8)
		end;
	}
}

local game = GAMESTATE:GetCurrentGame():GetName()

if (game=="dance" or game=="pump" or game=="techno") then
	af[#af+1] = LoadActor("visuals")
end

return af