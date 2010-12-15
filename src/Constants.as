package  
{
	/**
	 * this is a central class to organize game constants -- physics parameters, gameplay balance knobs, etc.
	 */
	
	public class Constants 
	{
		
		// dimension (in pixels) of the basic tile grid
		
		public static const TILE_SIZE:Number = 16;
		
		// field delimiter ("|") for multiline text fields
		
		public static const DELIMITER:RegExp = /\|/g;
		
		// 'locations' is a simple data dictionary between room name and map name
		
		public static const locations:Object =
		{
			level00: Assets.MAP_00
		}
		
	}

}