package entities
{
	/**
	 * This is the main player controlled object. This class reads (and responds to) player input
	 * (movement etc.) It also checks for collisions with room exits and walls.
	 * 
	 */
		
	import flash.geom.Point;
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
	import entities.attacks.*;
		
	public class Adventurer extends Entity
	{
		private var speed:Number = 55;                // movement speed
		private var shotCooldown:Number = 0;        // timer between shots
		public static var facing:String = "left";
		
		public function Adventurer():void 
		{
			graphic = new Image(Assets.SPR_ADVENTURER);
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "adventurer";
			
		}
		
		override public function update():void
		{
			// trace("shotCooldown");
			
			if (shotCooldown > 0)
			{
				shotCooldown--;
			}
			move();
		}
		
		private function move():void
		{
			var newX:Number;
			var newY:Number;
			var mySpeed:Number = speed * FP.elapsed;
			
			// move the player + keycheck loop
			
			if (Input.check(Key.RIGHT))
			{
				newX = x + mySpeed;
				facing = "right";
				if (!colliding(new Point(newX, y)))
				{
					x += mySpeed;
				}
			}
			else if (Input.check(Key.LEFT) )
			{
				newX = x - mySpeed;
				facing = "left";
				if (!colliding(new Point(newX, y)))
				{
					x -= mySpeed;
				}
			}
			else if (Input.check(Key.UP))
			{
				newY = y - mySpeed;
				facing = "up";
				if (!colliding(new Point(x, newY)))
				{
					y -= mySpeed;
				}		
			}
			else if (Input.check(Key.DOWN))
			{
				newY = y + mySpeed;
				facing = "down";
				if (!colliding(new Point(x, newY)))
				{
					y += mySpeed;
				}
			}
			
			if (Input.pressed(Key.Z) && (shotCooldown <= 0 ))
			{
				shotCooldown = 40;
				shoot();
			}
		}
		
		private function shoot():void 
		{
			world.add(new PlayerBullet(x + 4, y, facing));
		}
		
		private function colliding(position:Point):Boolean 
		{
			
			// first check to see if the player hit any exits
			
			var myExit:Exit = collide("exit", position.x, position.y) as Exit;
			var levelList:Array = [];
			
			if (myExit)
			{
				// destroy all instances in the current world, then send
				// the player to destination room
				
				world.removeAll();
				FP.world = new GameWorld(myExit.destRoom);
			}
			
			if (collide("terraingrid", position.x, position.y))
			{
				// give wall collisions a bit of bounce
				
				switch (facing)
				{
					case "up":
					y += Math.floor(y / 63);
					break;
					case "down":
					y -= Math.ceil(y / 63);	
					break;
					case "left":
					x += Math.floor(x / 63);
					break;
					case "right":
					x -= Math.ceil(x / 63);
					break;
				}
				
				return true;
			}
			
			// add collisions with enemies/objects/doors/etc.
			
			
			else return false;
		}
	}

}