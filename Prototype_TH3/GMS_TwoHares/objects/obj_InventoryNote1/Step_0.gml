/// @description Insert description here
if global.objInventoryTable.visible {
	if global.NoteFirstInInventory {
		global.objInventoryNote1.visible = true;
		exit;
	}
	self.visible = false;
}
else {
	self.visible = false;
}