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
			if(phrase == 'WATCH OUT!') {
				
				return 'Whoa, chill out!';
			
			}else if(phrase == 'Does this cryogenic chamber make me look fat?'){
				
				return 'Sure.';
			}
			
			return 'Whatever.';	
		}
		
	}
	
}