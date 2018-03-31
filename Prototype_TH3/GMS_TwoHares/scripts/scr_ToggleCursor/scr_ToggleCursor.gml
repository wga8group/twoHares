switch(cursor_sprite){
	case spr_CursorMain:
		cursor_sprite = spr_CursorClick;
	break;

	case spr_CursorClick:
		cursor_sprite = spr_CursorMain;
	break;

	case spr_CursorObjectMain:
		cursor_sprite = spr_CursorObjectClick;
	break;

	case spr_CursorObjectClick:
		cursor_sprite = spr_CursorObjectMain;
	break;

	default:
	break;
}
