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
			if(_isSilence(phrase)) {
				
				return 'Fine. Be that way!';
			}
			
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
			return phrase == phrase.toUpperCase() && /[A-z]+/g.test(phrase);
		}
		
		
		private function _isQuestion(phrase:String):Boolean
		{
			return phrase.lastIndexOf('?') == phrase.length - 1;
		}
		
		
		private function _isSilence(phrase:String):Boolean
		{
			return /^\s*$/g.test(phrase);
		}
		
	}
	
}