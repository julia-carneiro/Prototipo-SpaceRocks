switch(room){	
		case rm_game:
	draw_text(20,20, "SCORE: "+string(score));
	draw_text(20,40, "VIDA: "+string(lives));
	break;
	
	case rm_start:
	draw_set_halign(fa_center);
	var c = c_yellow;
	draw_text_transformed_color( 
		room_width/2, 100, "SPACE ROCKS",
		3, 3, 0, c,c,c,c, 1 
	);
	draw_text(
		room_width/2, 200,
@"Consiga 1000 pontos para vencer! :)

CONTROLES:
CIMA/BAIXO: mover
DIREITA/ESQUEDA: mudar o angulo
SPACEBAR: atirar

>> APERTE ENTER PARA INICIAR <<
")
	draw_set_halign(fa_left);
	
	break;

	case rm_win:
draw_set_halign(fa_center);
	var c = c_lime;
	draw_text_transformed_color( 
		room_width/2, 200, "VENCEU!",
		3, 3, 0, c,c,c,c, 1 
	);
	draw_text(
		room_width/2, 300,
@"APERTE ENTER PRA JOGAR NOVAMENTE")

	draw_set_halign(fa_left);
	
	break;
	
	
	case rm_gameover:
	draw_set_halign(fa_center);
	var c = c_red;
	draw_text_transformed_color( 
		room_width/2, 150, "GAME OVER!",
		3, 3, 0, c,c,c,c, 1 
	);
	draw_text(
		room_width/2, 250,
	"TOTAL DE PONTOS: "+string(score)
	);
	
	draw_text(
		room_width/2, 300,
	"APERTE ENTER PARA JOGAR NOVAMENTE"
	);
	draw_set_halign(fa_left);
	break;
}