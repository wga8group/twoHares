/// @description Insert description here
// You can write your code in this editor
if (global.objFirstLevelLogic.currentState == characterStates.NakedWalk) {
	if not global.StateBlockHeroAction {
		if (ScriptCanBeTake(self,global.objProtagonist) == true){
			global.objFirstLevelLogic.currentState = characterStates.DressingUp;
		}
	}
}
