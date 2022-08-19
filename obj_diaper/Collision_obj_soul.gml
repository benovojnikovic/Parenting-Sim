if (global.InvFrames <= 0) {
	global.InvFrames = 30;
	global.PlayerHP -= dmg;
if (global.PlayerHP <= 0){
	game_end();
}
}

if (disocon){
instance_destroy();	
}

