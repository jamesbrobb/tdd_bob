package
{
	import rules.PhraseRule;

	public class DefaultRule implements PhraseRule
	{
		public function DefaultRule()
		{
			super();
		}
		
		public function test(phrase:String):Boolean
		{
			return true;
		}
		
		public function getReply():String
		{
			return 'Whatever.';	
		}
	}
}