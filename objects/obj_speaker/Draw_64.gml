var _x = display_get_gui_width()/2;
var _y = display_get_gui_height()/2;

if (ChatterboxIsStopped(chatterbox))
{
	draw_text(_x, _y, "DONE");
}
else 
{
	for (var _i = 0; _i < ChatterboxGetContentCount(chatterbox); _i++)
	{
		var _content = ChatterboxGetContentSpeech(chatterbox, _i);
		active_content = _content;
		active_dialogue_index = _i;
		text = scribble($"[fa_center]{_content}");
		text.wrap(500).draw(_x, _y, typist);
	}
	
	if (ChatterboxIsWaiting(chatterbox) and typist.get_state() == 1) { scribble("[fa_center][pulse]PRESS SPACE").draw(_x, _y + 150); }
}