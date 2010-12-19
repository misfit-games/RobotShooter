package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;

	public class FactoryWorker extends Entity
	{
		private var speed:Number = 20;
		private var mySpeed:Number = speed * FP.elapsed;
		private var mySpritemap:Spritemap;
		
		// variables to handle animation switching. This is a clunky way of doing things
		// but should be fine for this project (aka a learning experience for working w/ Spritemaps)
		
		private var animationTimer:int = 30;
		private var animationSwitch:int = 2;
		
		
		public function FactoryWorker() 
		{
			mySpritemap = new Spritemap(Assets.SPR_WORKER, 16, 16);
			graphic = mySpritemap;
			width = 16;
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
			
			updateAnimation();
			move();
			
			
		}
		
		private function updateAnimation():void
		{
			// periodically add 2 to Spritemap frame index to set attack animation
			
			if (animationTimer <= 0)
			{
				if (animationSwitch == 0) { animationSwitch = 2; }
				if (animationSwitch == 2) { animationSwitch = 0; }
				animationTimer = 30;
			} else {
				animationTimer--;
			}
		}

		private function move():void
		{
			mySpeed = speed * FP.elapsed;
			
			if (x < Globals.adventurer.x)
			{
				mySpritemap.frame = (0 + animationSwitch);
				x += mySpeed;
			}
			else
			{
				mySpritemap.frame = (1 + animationSwitch);
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