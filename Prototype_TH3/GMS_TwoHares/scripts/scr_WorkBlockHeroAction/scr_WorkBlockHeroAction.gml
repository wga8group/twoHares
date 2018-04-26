if instance_exists(global.objDialogue){
	if global.objDialogue.visible {
		global.StateBlockHeroAction = true;
		//show_debug_message("dialogue")
		exit;
	}
}

if instance_exists(global.objDialogueChoice){
	if global.objDialogueChoice.visible {
		global.StateBlockHeroAction = true;
		//show_debug_message("dialogueChoice")
		exit;
	}
}

if instance_exists(global.objInventoryTable){
	if global.objInventoryTable.visible {
		global.StateBlockHeroAction = true;
		//show_debug_message("inventory")
		exit;
	}
}

if instance_exists(global.objBlackout){
	if global.objBlackout.visible {
		global.StateBlockHeroAction = true;
		//show_debug_message("blackout")
		exit;
	}
}

if instance_exists(global.objSafeCode){
	if global.objSafeCode.visible {
		global.StateBlockHeroAction = true;
		//show_debug_message("safe")
		exit;
	}
}

switch(argument0){
	
	case characterStates.startRoom:
		global.StateBlockHeroAction = true;
		//show_debug_message("case start")
		exit;
	break;
	
	case characterStates.WakeUp:
		global.StateBlockHeroAction = true;
		//show_debug_message("case wake")
		exit;
	break;	
	
	case characterStates.GirlDialogue:
		global.StateBlockHeroAction = true;
		//show_debug_message("case girl")
		exit;
	break;
	
	case characterStates.BossDialogue:
		global.StateBlockHeroAction = true;
		//show_debug_message("case boss")
		exit;
	break;
	
	default:
	break;
}

//show_debug_message("none")
global.StateBlockHeroAction = false;