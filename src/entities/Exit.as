package entities 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	
	public class Exit extends Entity
	{
		public var destRoom:String;
		
		public function Exit():void
		{
			graphic = new Image(Assets.SPR_EXIT);
			x = 0;
			y = 0;
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "exit";
		}
		
	}

}