package entities 
{
	// displays score, battery icon, level name etc.
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class HUD extends Entity
	{
		
		[Embed(source = "../assets/visitor1.ttf", embedAsCFF="false", fontFamily = "visitor1")] private static const myfont:Class;

		private var score:Text;
		private var battery:Text;
		private var display:Graphiclist;

		public function HUD():void
		{
			Text.font = "visitor1";
			Text.size = 24;
			layer = -100;
			
		}
		
		override public function update():void 
		{
			score = new Text("score text",10,10);
			score.color = 0xFFFFFF;
			display = new Graphiclist(score);
			
			battery = new Text(Globals.batteryCharge.toString(), 250, 10);
			battery.color = 0xFFFFFF;
			display.add(battery);
			
			
			
			graphic = display;
		}
		
	}

}