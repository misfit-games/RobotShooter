package entities
{
	// GameWorld.as is the top-level class under Main, it contains all other instances and is destroyed & recreated
	// whenever a room exit is touched
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
		
	public class GameWorld extends World
	{
		public var mapName:String;
		
		public function GameWorld(newMap:String):void
		{
			mapName = newMap;
		}
		
		override public function begin():void
		{
			
			// add
			
			Globals.adventurer = new Adventurer;
			add(Globals.adventurer);
			
			Globals.level = new Level(Constants.locations[mapName]);
			add(Globals.level);
			
			add(new HUD());			
			
		//	checkSpecialRooms(mapName);
		}
		
		override public function update():void 
		{
			super.update();
		}
		
		override public function render():void
		{
			super.render();
		}
		
		/*private function checkSpecialRooms(myMap:String):void
		{
			switch (myMap) 
			{
				case "intro0":
					//soundTest();
					break;
				case "intro1":
					musicPlay(Assets.MUS_INTRO);
				case "intro2":
				case "intro3":
					add(new GoodFairy);
					break;
				case "intro4":
					add(new GoodFairy);
					musicPlay(Assets.MUS_WOODS);
					break;
				default:
					// do nothing
				break;
			}
		}
		*/

	private function musicPlay(myMusic:Class):void 
		{
			// Stop any music currently playing and start a new mp3
			
			if (Globals.musicLoop != null) { Globals.musicLoop.stop(); }
			Globals.musicLoop = new Sfx(myMusic);
			Globals.musicLoop.loop(.4);
		}
		
	}
}