package entities.attacks

{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	// This is the basic projectile attack
		
	public class PlayerBullet extends Entity
	{
		private var speed:Number = 400;
		private var xvel:Number = 0;
		private var yvel:Number = 0;
		
		
		public function PlayerBullet(_x:Number, _y:Number, facing:String) 
		{
			x = _x;
			y = _y;
			graphic = Image.createRect(16, 8, 0xFFA92A);  // rectangle for bullet
			type = "bullet";
			switch (facing) 
			{
				case "left":
					xvel = -5;
					yvel = 0;
					break;
				case "right":
					xvel = 5;
					yvel = 0;
					break;
				case "up":
					xvel = 0;
					yvel = -2;
					break;
				case "down":
					xvel = 0;
					yvel = 2;
				break;
			}
		}
		
		override public function update():void
		{
			x += xvel;
			y += yvel;
			
			// maybe destroy bullet if offscreen
			
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}

}