package  
{
	import entities.*;
	import net.flashpunk.*;
	
	public class Globals 
	{
		
		// only one music loop needed, set e.g. in GameWorld.checkSpecialRooms
		
		public static var musicLoop:Sfx;
		public static var myFrequency:Number = 440;
		
		// the main objects for player + map + text panel
		
		public static var level:Level;
		public static var adventurer:Adventurer;
		public static var textBlock:Array;
		
		
		// room to restart from after death
		
		public static var checkRoom:String = "level00";
		
		
		// bits for score tracking purposes
		
		public static var playerScore:Number = 0;
		public static var levelNumber:Number = 0;
		public static var batteryCharge:Number = 100;
		
		
		
		public function Globals() 
		{
			
		}
		
	}

}