package
{
	public class Bob
	{
		
		public function Bob()
		{
			super();
		}
		
		
		public function hey(phrase:String):String
		{
			if(isShouting(phrase)) {
				return 'Whoa, chill out!';
			}
			
			if(phrase == 'Does this cryogenic chamber make me look fat?'){
				
				return 'Sure.';
			}
			
			return 'Whatever.';	
		}
		
		
		private function isShouting(phrase:String):Boolean
		{
			return /^[^a-z]+$/.test(phrase);
		}
		
	}
	
}