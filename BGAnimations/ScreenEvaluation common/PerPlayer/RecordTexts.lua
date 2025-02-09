if SL.Global.GameMode == "Casual" then return end

local player = ...
local pn = ToEnumShortString(player)

local stats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player)

-- FIXME (maybe)
-- both these methods will always return -1 in EventMode, which means
-- that SL[pn].HighScores.EnteringName will never be true in EventMode
-- and ScreenNameEntryTraditional will always display "OUT OF RANKING"
local highScoreIndex = {
	Machine = stats:GetMachineHighScoreIndex(),
	Personal = stats:GetPersonalHighScoreIndex()
}

local EarnedMachineRecord  = (  highScoreIndex.Machine ~= -1 ) and stats:GetPercentDancePoints() >= 0.01
local EarnedPersonalRecord = ( highScoreIndex.Personal ~= -1 ) and stats:GetPercentDancePoints() >= 0.01

if EarnedMachineRecord or EarnedPersonalRecord then

	-- else this player earned some record and the ability to enter a high score name
	-- we'll check for this flag, later, in ./BGAnimations/ScreenNameEntryTradtional underlay/default.lua
	SL[pn].HighScores.EnteringName = true

	-- record text
	local t = Def.ActorFrame{
		InitCommand=function(self) self:zoom(0.225)
		end;
		OnCommand=function(self)
			self:x( (player == PLAYER_1 and -80) or 80 )
			self:y( 54 )
		end
	}

	if EarnedMachineRecord then
		t[#t+1] = LoadFont("_wendy small")..{
			Text=string.format("Machine Record %i", highScoreIndex.Machine+1),
			InitCommand=function(self)
				self:halign(0):xy(-110,-18):diffuse(PlayerColor(player)) 
				self:glowshift():effectcolor1(color("1,1,1,0")):effectcolor2(color("1,1,1,0.25"))
			end;
		}
	end

	if EarnedPersonalRecord then
		t[#t+1] = LoadFont("_wendy small")..{
			Text=string.format("Personal Record %i", highScoreIndex.Personal+1),
			InitCommand=function(self)
				self:halign(0):xy(-110,24):diffuse(PlayerColor(player)) 
				self:glowshift():effectcolor1(color("1,1,1,0")):effectcolor2(color("1,1,1,0.25"))
			end;			
		}
	end

	return t
end