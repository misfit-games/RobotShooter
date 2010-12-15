package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	public class TextPopup extends Entity
	{
		
		// This is a class for displaying text pop-ups. With the Visitor1 font at size 24, it looks good
		// with about 20 chars per line
				
		// This Embed statemement should go in Assets
		
		[Embed(source = "../assets/visitor1.ttf", embedAsCFF="false", fontFamily = "visitor1")] private static const myfont:Class;

		private var t:Text;
		private var display:Graphiclist;
		private var myText:Array = [];
		private var myLine:int = 0;
		
		public function TextPopup(myTextString:String):void 
		{
			Text.font = "visitor1";
			Text.size = 24;

			layer = -100;
			
			t = new Text(myTextString,20,20);
			t.color = 0x007f16;
			display = new Graphiclist(t);
			
			graphic = display;
		}
		
	}

}