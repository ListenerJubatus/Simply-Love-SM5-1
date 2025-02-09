local dc1 = DifficultyIndexColor(1)
local dc2 = DifficultyIndexColor(2)
local style = ThemePrefs.Get("VisualTheme")

local t = Def.ActorFrame{
	OffCommand=function(self) self:linear(1) end;
}

-- centers
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+50;diffusealpha,1;decelerate,0.4;addy,-250;accelerate,0.5;addy,20;diffusealpha,0;);

	--top center
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flycenter")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,50;zoom,1;diffusealpha,0.4;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flycenter")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,-50;zoom,0.6;diffusealpha,0.6;sleep,0;zoom,0;);
	};
}

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+380;diffusealpha,1;decelerate,0.4;addy,-250;accelerate,0.5;addy,80;diffusealpha,0;);

	--bottom center
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flycenter")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,50;zoom,0.6;diffusealpha,0.6;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flycenter")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,-50;zoom,1;diffusealpha,0.4;sleep,0;zoom,0;);
	};
}

-- up 200
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-200;accelerate,0.5;addy,100;diffusealpha,0;);

	--top left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,1.0;diffusealpha,0.6;sleep,0;zoom,0;);
	};

	--top right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,1.0;diffusealpha,0.4;sleep,0;zoom,0;);
	};
}

--up 250
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx; y,_screen.cy+200;diffusealpha,1; decelerate,0.5; addy,-250; accelerate,0.5; addy,100;diffusealpha,0;);

	--top left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,1.5;diffusealpha,0.3;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,0.8;diffusealpha,0.6;sleep,0;zoom,0;);
	};

	--top right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,1.5;diffusealpha,0.2;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,0.8;diffusealpha,0.4;sleep,0;zoom,0;);
	};
}

--up 150, out 280
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-150;accelerate,0.5;addy,100;diffusealpha,0;);

	--top left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-280;zoom,1.2;diffusealpha,0.6;sleep,0;zoom,0;);
	};

	--top right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,280;zoom,1.2;diffusealpha,0.4;sleep,0;zoom,0;);
	};
}

--up 250, out 280
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-250;accelerate,0.5;addy,100;diffusealpha,0;);

	--top left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-280;zoom,0.2;diffusealpha,0.3;sleep,0;zoom,0;);
	};

	--top right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flytop")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,280;zoom,0.2;diffusealpha,0.2;sleep,0;zoom,0;);
	};
}

--up 200
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-200;accelerate,0.5;addy,100;diffusealpha,0;);

	--bottom left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,1.0;diffusealpha,0.3;sleep,0;zoom,0;);
	};

	--bottom right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,1.0;diffusealpha,0.2;sleep,0;zoom,0;);
	};
}

--up 250
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-250;accelerate,0.5;addy,100;diffusealpha,0;);

	-- bottom left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,1.5;diffusealpha,0.6;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-200;zoom,0.8;diffusealpha,0.3;sleep,0;zoom,0;);
	};
	-- bottom right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,1.5;diffusealpha,0.4;sleep,0;zoom,0;);
	};

	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc2;zoom,0;diffusealpha,0;accelerate,0.8;addx,200;zoom,0.8;diffusealpha,0.2;sleep,0;zoom,0;);
	};
}

--up 150, out 280
t[#t+1] = Def.ActorFrame {
	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx;y,_screen.cy+200;diffusealpha,1;decelerate,0.4;addy,-150;accelerate,0.5;addy,100;diffusealpha,0;);

	--bottom left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-280;zoom,1.2;diffusealpha,0.3;sleep,0;zoom,0;);
	};

	--bottom right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,280;zoom,1.2;diffusealpha,0.2;sleep,0;zoom,0;);
	};
}

--up 250, out 280
t[#t+1] = Def.ActorFrame {

	InitCommand=function(self) self:diffusealpha(0) end;
	OnCommand=cmd(x,_screen.cx; y,_screen.cy+200;diffusealpha,1; decelerate,0.4; addy,-250; accelerate,0.5; addy,100; diffusealpha,0;);

	--bottom left
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;rotationy,180;zoom,0;diffusealpha,0;accelerate,0.8;addx,-280;zoom,0.2;diffusealpha,0.3;sleep,0;zoom,0;);
	};
	--bottom right
	LoadActor(THEME:GetPathG("", "_VisualStyles/".. style .."/TitleMenu flybottom")) .. {
		InitCommand=function(self) self:diffusealpha(0) end;
		OnCommand=cmd(diffuse,dc1;zoom,0;diffusealpha,0;accelerate,0.8;addx,280;zoom,0.2;diffusealpha,0.2;sleep,0;zoom,0;);
	};
}

return t