package rules
{
	public class SilenceRule implements PhraseRule
	{
		public function SilenceRule()
		{
			super();
		}
		
		public function test(phrase:String):Boolean
		{
			return /^\s*$/g.test(phrase);
		}
		
		public function getReply():String
		{
			return 'Fine. Be that way!';
		}
	}
}