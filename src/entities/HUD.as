package entities 
{
	// displays score, battery icon, level name etc.
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class HUD extends Entity
	{
		
		[Embed(source = "../assets/visitor1.ttf", embedAsCFF="false", fontFamily = "visitor1")] private static const myfont:Class;

		private var t:Text;
		private var display:Graphiclist;

		public function HUD():void
		{
			Text.font = "visitor1";
			Text.size = 24;
			layer = -100;
			
			t = new Text("chicken butt",20,20);
			t.color = 0xFFFFFF;
			display = new Graphiclist(t);
			
			graphic = display;
		}
		
		
	}

}