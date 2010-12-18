package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;

	public class FactoryWorker extends Entity
	{
		private var speed:Number = 20;
		private var mySpeed:Number = speed * FP.elapsed;
		
		public function FactoryWorker() 
		{
			graphic = new Image(Assets.SPR_HUMAN);
			width = 8;
			height = 16;
			type = "enemy";
		}
		
		override public function update():void 
		{
			
			if (collide("bullet", this.x, this.y))
			{
				destroy();
			}
			
			if (collide("adventurer", this.x, this.y))
			{
				trace("***");
				if (Math.random() < 0.1) { Globals.batteryCharge--; }
			}
			
			mySpeed = speed * FP.elapsed;
			
			if (x < Globals.adventurer.x)
			{
				x += mySpeed;
			}
			else
			{
				x -= mySpeed;
			}
			
			if (y < Globals.adventurer.y)
			{
				y += mySpeed;
			}
			else
			{
				y -= mySpeed;
			}
			
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
		

		
	}

}