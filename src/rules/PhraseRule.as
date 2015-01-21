package rules
{
	public interface PhraseRule
	{
		function test(phrase:String):Boolean;
		function getReply():String;
	}
}