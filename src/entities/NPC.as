package entities 
{
	import flash.geom.Point;
	import net.flashpunk.*
	import net.flashpunk.graphics.*;
	
	public class NPC extends Entity
	{
		public var npcSpeech:String;
		
		public function NPC() 
		{
			graphic = new Image(Assets.SPR_BYSTANDER);
			width = 8;
			height = 16;
			type = "npc";
		}
		
		override public function update():void 
		{
			if (collide("adventurer", this.x, this.y))
			{
				(FP.world as GameWorld).add(new SpeechPopup(npcSpeech, "0xffffff", y-10));
			}
		}
		
	}

}