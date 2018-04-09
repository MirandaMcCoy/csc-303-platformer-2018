package player.fsm;

import player.Hero;
import player.fsm.State;

/**
 * Basic parent of player state classes, sets up the reference to the hero object the states will act upon.
 * @author Samuel Bumgardner
 */
class PlayerState implements State
{
	private var managedHero:Hero;

	public function new(hero:Hero) 
	{
		this.managedHero = hero;
	}
	
	// Defined methods required by State, but no general logic needed to implement here yet.
	
	public function handleInput(input:Input):Int {
		return PlayerStates.NO_CHANGE;
	}
	
	public function update():Void {}
	
	public function transitionIn():Void {}
	
	public function transitionOut():Void {}
}