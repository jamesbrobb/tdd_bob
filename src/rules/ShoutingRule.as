package rules
{
	public class ShoutingRule implements PhraseRule
	{
		
		public function ShoutingRule()
		{
			super();
		}
		
		public function test(phrase:String):Boolean
		{
			return phrase == phrase.toUpperCase() && /[A-z]+/g.test(phrase);
		}
		
		public function getReply():String
		{
			return 'Whoa, chill out!';
		}
	}	
}