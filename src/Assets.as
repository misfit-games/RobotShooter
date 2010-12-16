package  
{
	/**
	 * this class is to consolidate all embed data (artwork, maps, sound) in one place
	 */
	
	public class Assets 
	{
		// tilemaps
		
		[Embed(source = "assets/art/robotiles.png")] public static const SPR_TERRAIN:Class;
		
		// individual sprites
		
		[Embed(source = "assets/art/basicrobot.png")] public static const SPR_ADVENTURER:Class;
		[Embed(source = "assets/art/bystander816.png")] public static const SPR_HUMAN:Class;
		[Embed(source = "assets/art/simplespawn.png")] public static const SPR_BASICSPAWN:Class;
		
		// the exit sprite is set visible=false by the Level.loadLevel function
		
		[Embed(source = "assets/art/exit.png")] public static const SPR_EXIT:Class;
		
		
		
		
		// Maps! Each map also should have a data dictionary entry in Constants.as
		
		// intro hallway
		
		[Embed(source = "assets/maps/level00.oel", mimeType = "application/octet-stream")]
		public static const MAP_00:Class;
		
		// music
			
		
		// font
		
		//[Embed(source = "assets/nokiafc22.ttf", fontFamily = "visitor7pt")] public static const DEFAULT_FONT:Class;
		
	}

}