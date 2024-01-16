global.dialogue_speakers = ds_map_create(); 

function Speaker(_name, _img, _min_p, _max_p, _voice_freq) constructor
{
	name = _name;
	sprite_index = _img;
	image_index = 0;
	min_pitch = _min_p;
	max_pitch = _max_p;
	voice_freq = _voice_freq
}

function create_speaker(_name, _img, _min_p = 0.5, _max_p = 2, _voice_freq = 1)
{
	var _speaker = new Speaker(_name, _img, _min_p, _max_p, _voice_freq);
	ds_map_add(global.dialogue_speakers, _name, _speaker);
}

function speaker_exists(_name)
{
	return ds_map_exists(global.dialogue_speakers, _name);	
}

function get_speaker(_name)
{
	return global.dialogue_speakers[? _name];
}