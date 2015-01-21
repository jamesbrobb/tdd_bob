package
{
	import Array;
	
	import flash.display.Sprite;
	
	import flexUnitTests.BobTest;
	
	import flexunit.flexui.FlexUnitTestRunnerUIAS;
	
	import org.flexunit.runner.Request;
	
	public class FlexUnitApplication extends Sprite
	{
		public function FlexUnitApplication()
		{
			onCreationComplete();
		}
		
		private function onCreationComplete():void
		{
			var testRunner:FlexUnitTestRunnerUIAS=new FlexUnitTestRunnerUIAS();
			testRunner.portNumber=8765; 
			this.addChild(testRunner); 
			testRunner.runWithFlexUnit4Runner(currentRunTestSuite(), "bob_test");
		}
		
		public function currentRunTestSuite():Array
		{
			var testsToRun:Array = new Array();
			testsToRun.push(Request.methods(flexUnitTests.BobTest,["prattling_on",
				"forceful_questions",
				"shouting_with_no_exclamation_mark",
				"shouting_numbers",
				"stating_something",
				"statement_containing_question_mark",
				"only_numbers",
				"shouting",
				"calmly_speaking_about_umlauts",
				"question_with_only_numbers",
				"asking_a_question",
				"silence",
				"shouting_with_special_characters",
				"talking_forcefully",
				"prolonged_silence",
				"shouting_with_umlauts",
				"using_acronyms_in_regular_speech"]));
			
			return testsToRun;
		}
	}
}