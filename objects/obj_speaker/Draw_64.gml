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
		var _content_speaker = ChatterboxGetContentSpeaker(chatterbox, _i);
		var _speaker_exists = speaker_exists(_content_speaker);
		show_debug_message(_content_speaker);
		var _sprite_width = 32;
		
		if (_speaker_exists)
		{
			var _speaker = get_speaker(_content_speaker);
			scribble($"[fa_center]{_content_speaker}").draw(32, _y - 20);
			draw_sprite_ext(_speaker.sprite_index, _speaker.image_index, 0, _y, 2, 2, 0, c_white, 1);
			draw_rectangle(0, _y, 0 + _sprite_width * 2, _y + 64, true);
			active_speaker = _speaker;
		}	else {
			scribble("???").draw(_x, _y - 20);
		}
		
		var _content = ChatterboxGetContentSpeech(chatterbox, _i);
		active_content = _content;
		active_dialogue_index = _i;
		text = scribble($"[fa_left]{_content}");
		//var _last_page = text.page(text.get_page_count() - 1);
		text.wrap(500 - 70, 100).draw(70, _y, typist);
		draw_rectangle(0, _y, 500, _y + 100, true);
	}
	
	if (ChatterboxIsWaiting(chatterbox) and typist.get_state() == 1) { scribble("[fa_center][pulse]PRESS SPACE").draw(_x, _y + 150); }
}