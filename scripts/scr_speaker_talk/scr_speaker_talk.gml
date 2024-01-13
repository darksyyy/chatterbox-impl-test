
function scr_speaker_talk(_chr, _index)
{
	var _voice = get_char_sound(_chr, _index);
	
	if (active_voice == undefined or !audio_is_playing(active_voice))
	{
		active_voice = audio_play_sound(_voice.sound, 10, 0, 1, 0, _voice.pitch);
	}
}
	
	
function get_char_sound(_chr, _index)
{
	_chr = string_lower(_chr);
	
	var _chr_code = ord(_chr);
	var _hash = (_chr_code * 37 + 17) mod 100000; 
	
	var _sound = _hash mod array_length(obj_speaker.voice_sounds);
	var _pitch = ((_hash mod 100) + 50)/ 100;
	
	
	var _voice = {
			sound: _sound,
			pitch: _pitch
	}
	
	return _voice;
}