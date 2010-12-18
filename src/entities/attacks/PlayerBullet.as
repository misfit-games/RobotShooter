package entities.attacks

{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	// This is the basic projectile attack
		
	public class PlayerBullet extends Entity
	{
		private var speed:Number = 60;
		private var mySpeed:Number = speed * FP.elapsed;
		private var xvel:Number = 0;
		private var yvel:Number = 0;
		
		
		public function PlayerBullet(_x:Number, _y:Number, facing:String) 
		{
			x = _x;
			y = _y;
			graphic = Image.createRect(8, 8, 0xCC0000);  // rectangle for bullet
			width = 16;
			height = 8;
			type = "bullet";
			switch (facing) 
			{
				case "left":
					xvel = -(mySpeed * 1.5);
					yvel = 0;
					break;
				case "right":
					xvel = mySpeed * 1.5;
					yvel = 0;
					break;
				case "up":
					xvel = 0;
					yvel = -mySpeed;
					break;
				case "down":
					xvel = 0;
					yvel = mySpeed;
				break;
			}
		}
		
		override public function update():void
		{
			x += xvel;
			y += yvel;
			
			if (collide("enemy", this.x, this.y)) 
			{ 
				FP.world.remove(this); 
			}
			
			// maybe destroy bullet if offscreen
			
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}

}