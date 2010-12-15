package entities 
{
	import flash.media.Sound;
	import flash.events.SampleDataEvent;
	import net.flashpunk.*;
	
	public class SoundwaveTools extends Entity
	{
		private const pi:Number = Math.PI;
		private const SR:Number = 44100;
		private const TWO_PI_OVER_SR:Number = (2 * pi) / SR;
		
		public function SoundwaveTools()
		{
			var mySound:Sound = new Sound(); 
			mySound.addEventListener(SampleDataEvent.SAMPLE_DATA, sineWaveGenerator); 
			mySound.play(); 
		}
		
		public function sineWaveGenerator(event:SampleDataEvent):void 
		{		 
			for (var i:int = 0; i < 8192; i++) 
			{ 
				var ampMultiplier:Number = .015;
				
				var myPitch:Number = Globals.myFrequency;
				
				var n:Number = Math.sin((i + event.position) * TWO_PI_OVER_SR * myPitch); 
				event.data.writeFloat(n * ampMultiplier); 
				event.data.writeFloat(n * ampMultiplier); 
			} 
		}		
	}

}