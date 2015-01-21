package flexUnitTests
{
import org.hamcrest.assertThat;
import org.hamcrest.object.equalTo;
import rules.PhraseRule;
import rules.QuestionRule;
import rules.ShoutingRule;
import rules.SilenceRule;

public class BobTest
{
    private var bob:Bob;
	private var rules :Array = [new SilenceRule(), new ShoutingRule(), new QuestionRule(), new DefaultRule()];
	
	[Before]
	public function before():void
	{
		bob = new Bob(Vector.<PhraseRule>(rules));
	}
	
	[After]
	public function after():void
	{
		bob = null;
	}

    [Test]
    public function stating_something():void
    {
        var result:String = bob.hey('Tom-ay-to, tom-aaaah-to.');
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function shouting():void
    {
        var result:String = bob.hey('WATCH OUT!');
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function asking_a_question():void
    {
        var result:String = bob.hey('Does this cryogenic chamber make me look fat?');
        assertThat(result, equalTo('Sure.'));
    }

    [Test]
    public function talking_forcefully():void
    {
        var result:String = bob.hey("Let's go make out behind the gym!");
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function using_acronyms_in_regular_speech():void
    {
        var result:String = bob.hey("It's OK if you don't want to go to the DMV.");
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function forceful_questions():void
    {
        var result:String = bob.hey('WHAT THE HELL WERE YOU THINKING?');
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function shouting_numbers():void
    {
        var result:String = bob.hey('1, 2, 3 GO!');
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function only_numbers():void
    {
        var result:String = bob.hey('1, 2, 3');
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function question_with_only_numbers():void
    {
        var result:String = bob.hey('4?');
        assertThat(result, equalTo('Sure.'));
    }

    [Test]
    public function shouting_with_special_characters():void
    {
        var result:String = bob.hey('ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!');
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function shouting_with_umlauts():void
    {
        var result:String = bob.hey("\xdcML\xc4\xdcTS!");
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function calmly_speaking_about_umlauts():void
    {
        var result:String = bob.hey("\xfcML\xe4\xdcTS");
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function shouting_with_no_exclamation_mark():void
    {
        var result:String = bob.hey('I HATE YOU');
        assertThat(result, equalTo('Whoa, chill out!'));
    }

    [Test]
    public function statement_containing_question_mark():void
    {
        var result:String = bob.hey('Ending with a ? means a question.');
        assertThat(result, equalTo('Whatever.'));
    }

    [Test]
    public function prattling_on():void
    {
        var result:String = bob.hey('Wait! Hang on.  Are you going to be OK?');
        assertThat(result, equalTo('Sure.'));
    }

    [Test]
    public function silence():void
    {
        var result:String = bob.hey('');
        assertThat(result, equalTo('Fine. Be that way!'));
    }

    [Test]
    public function prolonged_silence():void
    {
        var result:String = bob.hey('   ');
        assertThat(result, equalTo('Fine. Be that way!'));
    }
}
}
