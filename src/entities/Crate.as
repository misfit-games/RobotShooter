package entities 
{
	import flash.geom.Point;
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
				switch (Adventurer.facing) 
				{
					case "up":
						if (!colliding(new Point(x, y - Constants.TILE_SIZE))) { y = y - Constants.TILE_SIZE; }
					break;
					case "down":
						if (!colliding(new Point(x, y + Constants.TILE_SIZE))) { y = y + Constants.TILE_SIZE; }
					break;
					case "left":
						if (!colliding(new Point(x - Constants.TILE_SIZE, y))) { x = x - Constants.TILE_SIZE; }
					break;
					case "right":
						if (!colliding(new Point(x + Constants.TILE_SIZE, y))) { x = x + Constants.TILE_SIZE; }
					break;
					default:
						
					break;
				}
			}
		}
		
		private function colliding(position:Point):Boolean 
		{
			if (collide("crate", position.x, position.y))
			{
				return true;
			}
			if (collide("terraingrid", position.x, position.y))
			{
				return true;
			}
			return false;
		}
	}

}