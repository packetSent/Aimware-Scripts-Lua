-- Version: Minified --
--[[
   Made by: VitexHD,
   Media; https://www.youtube.com/channel/UCRd7x0zI3ZtcTvsscFM1nXw?view_as=subscriber,
          https://aimware.net/forum/user-259740.html,
          https://www.instagram.com/danwvitex/,
          https://twitter.com/VitexUHD
   File-Version: 1.0,
   Requests; Don't say that this is your own, thank you. 
           - Learn from this, do not copy & paste.

   Extra: This is my first Aimware-Lua Script, I used Anti-Kick.lua as an understanding on how everything worked and it's actually really easy <3 Enjoy <3
]]
local VE_WINDOW_ACTIVE=gui.Checkbox(gui.Reference("MISC","GENERAL","Main"),"VE_WINDOW_ACTIVE","Show Voice Enable Menu",false);
local VE_WINDOW=gui.Window("VE_WINDOW","Voice Enable",200,200,200,150);
local VE_GROUP_SETTINGS=gui.Groupbox(VE_WINDOW,"Options",13,13,175,100);
local VE_CB_VOICE_ENABLED=gui.Checkbox(VE_GROUP_SETTINGS,"ve_enable_voice","Enable Voice",0);
local VE_BTN_SEND=gui.Button(VE_GROUP_SETTINGS,"Send","ve_btn_send");

function ShowWindow()
		if(input.IsButtonPressed(gui.GetValue("msc_menutoggle")))then menuPressed=menuPressed==0 and 1 or 0;
		end;

		if(VE_WINDOW_ACTIVE:GetValue())then VE_WINDOW:SetActive(menuPressed);

		elseif(VE_WINDOW_ACTIVE:GetValue()~=1)then VE_WINDOW:SetActive(0);
		end;
end;

callbacks.Register("Draw",function()ShowWindow();
if(VE_BTN_SEND)then client.Command("voice_enable "..tostring(VE_CB_VOICE_ENABLED:GetValue()));end;end)
