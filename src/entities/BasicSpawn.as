package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;

	public class BasicSpawn extends Entity
	{
		public var factoryWorker:FactoryWorker;
		
		public function BasicSpawn() 
		{
			graphic = new Image(Assets.SPR_BASICSPAWN);
			width = Constants.TILE_SIZE;
			height = Constants.TILE_SIZE;
			type = "spawn";			
		}
		
		override public function update():void 
		{
			// x% chance to spawn new monster every frame
			
			if (Math.random() < 0.01)
			{
				factoryWorker = new FactoryWorker();
				(FP.world as GameWorld).add(factoryWorker);
				factoryWorker.x = this.x;
				factoryWorker.y = this.y;
			}
		}	
		
	}

}