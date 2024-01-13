

voice_sounds = [snd_voice_1, snd_voice_2, snd_voice_3, snd_voice_4];
active_voice = undefined;
active_content = "";
active_dialogue_index = 0;

ChatterboxLoadFromFile("dialogue/dialogue.yarn");
chatterbox = ChatterboxCreate();
ChatterboxJump(chatterbox, "Start");

typist = scribble_typist();
typist.in(0.4, 0.2);

text = "";
