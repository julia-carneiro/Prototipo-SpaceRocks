score += 10
audio_play_sound(snd_die, 1, false);
instance_destroy();

with(other){
    instance_destroy();
	
	if(sprite_index == spr_asteroide_g){
	repeat(2){
	var new_asteroide = instance_create_layer(x,y,"Instances",obj_asteroide);
	new_asteroide.sprite_index = spr_asteroide_m;
	}
		
	}else if (sprite_index == spr_asteroide_m){
	repeat(2){
	var new_asteroide = instance_create_layer(x,y,"Instances",obj_asteroide);
	new_asteroide.sprite_index = spr_asteroide_p;
	}
	}else if (sprite_index == spr_asteroide_p){
	instance_destroy();
	
}
   
}

 repeat (10){
	instance_create_layer(x,y, "Instances", obj_debris);	
	}
