/// @description Insert description here
// You can write your code in this editor
if global.objInventoryTable.visible {
	if global.StoneInInventory {
		global.objInventoryStone.visible = true;
		exit;
	}
	self.visible = false;
}
else {
	self.visible = false;
}