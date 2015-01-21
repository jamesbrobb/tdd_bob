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
			if(_isShouting(phrase)) {
				
				return 'Whoa, chill out!';
			}
			
			if(_isQuestion(phrase)) {
				
				return 'Sure.';
			}
			
			return 'Whatever.';	
		}
		
		
		private function _isShouting(phrase:String):Boolean
		{
			return /^[^a-z]+$/.test(phrase) && /^(.*?[A-Z]){1,}.*$/.test(phrase);
		}
		
		
		private function _isQuestion(phrase:String):Boolean
		{
			return phrase.lastIndexOf('?') == phrase.length - 1;
		}
		
	}
	
}