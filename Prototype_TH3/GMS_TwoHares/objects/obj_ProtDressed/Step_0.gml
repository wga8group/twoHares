if not global.StateBlockHeroAction {
	script_execute(scr_WalkProt, obj_ProtDressed, spr_ProtIdleLeft, spr_ProtIdleRight, spr_ProtWalkLeft, spr_ProtWalkRight);
}
else{
	if (direction >= 90 && direction < 270)
	{
	    sprite_index = spr_ProtIdleLeft;
	}
	else
	{
	    sprite_index = spr_ProtIdleRight;
	}
}

