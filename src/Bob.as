package
{
	import rules.PhraseRule;

	public class Bob
	{
		
		private var _rules		: Vector.<PhraseRule>;
		
		
		
		public function Bob(rules:Vector.<PhraseRule>)
		{
			super();
			
			_rules = rules;
		}
		
		
		public function hey(phrase:String):String
		{
			var reply : String;
			
			for each (var rule:PhraseRule in _rules) 
			{
				if(rule.test(phrase)) break;
			}
			
			return rule.getReply();
		}
		
	}
	
}