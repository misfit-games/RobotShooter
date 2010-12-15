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
		
		public static var checkRoom:String = "courtyard";
		
		
		// bits for score tracking purposes
		
		public static var numberOfDeaths:Number = 0;
		public static var badFairyKills:Number = 0;
		public static var badFairyNestKills:Number = 0;
		
		
		// elf magic danger level tracking
		public static var emThreatLevel:Number = 0;
		
		
		
		public function Globals() 
		{
			
		}
		
	}

}