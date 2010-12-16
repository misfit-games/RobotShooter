package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class Crate extends Entity
	{
		
		public function Crate() 
		{
			graphic = new Image(Assets.SPR_CRATE);
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "crate";	
		}
		
		
		override public function update():void 
		{
			if (collide("adventurer", x, y))
			{
				// code
			}
		}
		
	}

}