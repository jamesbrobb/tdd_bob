package rules
{
	public class QuestionRule implements PhraseRule
	{
		
		public function QuestionRule()
		{
			super();
		}
		
		public function test(phrase:String):Boolean
		{
			return phrase.lastIndexOf('?') == phrase.length - 1;
		}
		
		public function getReply():String
		{
			return 'Sure.';
		}	
	}
}