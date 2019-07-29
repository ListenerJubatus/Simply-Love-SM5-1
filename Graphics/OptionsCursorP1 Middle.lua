return Def.ActorFrame {
	Def.Quad {
		Name="CursorTop",
		InitCommand=function(self) self:zoomto(1,12):y(-12) end;
	},
	Def.Quad {
		Name="CursorBottom",
		InitCommand=function(self) self:zoomto(1,12):y(12) end;
	}
}