if (ChatterboxIsWaiting(chatterbox) and typist.get_state() == 1)
{
	if (active_speaker != undefined) active_speaker.image_index = 0;
	if (keyboard_check_pressed(vk_space))
	{
		ChatterboxContinue(chatterbox);	
	}
}

if (typist.get_state() != 1)
{
	if(floor(typist.get_position()) mod (active_speaker == undefined ? 1 : active_speaker.voice_freq) == 0)
	{
		var _active_chr = string_char_at(active_content, typist.get_position())
		if (_active_chr != " ")
		{
			scr_speaker_talk(_active_chr, active_dialogue_index);
			if (active_speaker != undefined) active_speaker.image_index += 12/60;
		} else { active_speaker.image_index = 0; }
	}
}