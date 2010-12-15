package entities 
{
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
	
	public class SpeechPopup extends Entity
	{
		
		
		[Embed(source = "../assets/visitor1.ttf", embedAsCFF = "false", fontFamily = "visitor1")] private static const myfont:Class;
		
		private var t:Text;
		private var rect:Image;
		private var display:Graphiclist;
		private var myText:Array = [];
		private var myLine:int = 0;
		
		public function SpeechPopup(myTextString:String, myColor:String, myY:Number):void 
		{
			Text.font = "visitor1";
			Text.size = 18;

			layer = -80;
			
			t = new Text(myTextString,20,20);
			t.color = 0xffffff;
			display = new Graphiclist(t);
			
			layer = -100;
			
			graphic = display;   // display graphiclist
		}
		
		override public function update():void 
		{
			if (Input.pressed(Key.ANY))
			{
				FP.world.remove(this);
			}
		}
		
	}

}