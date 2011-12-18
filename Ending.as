package {
import org.flixel.*;

public class Ending extends FlxState{

	override public function create():void {
		var tx:FlxText = new FlxText(80,20,560,"Ending");
		add(tx);
		doEnd();
	}	
	
	public function doEnd():void {
		var title:FlxText = new FlxText(320,0,300);
		title.text = "Hey, you did it. Way to go, champ. I mean Duke. You defeated Davement, I mean, converted them, and you became the leader, having stolen their songs, from their later hit album...but...now you are so alone, so sad. Not like your anxiety got even better. The stage fright is too much. You are alone. You have no friends, no family..you don't exist. You are a ghost. BUT HERE'S THE DITCHPORK REVIEW OF YOUR ALBUM!";
		
		var review:FlxText = new FlxText(0,240,640);
		add(title);
		add(review);
		var sum:int = 0;
		for(var i:int = 0; i < 6; i++) {
			sum += Registry.notesCollected[i];
		}
		var times:Number = 0.0;
		for(var j:int = 0; i < 5; i++) {
			times += Registry.times[j];
		}

		if (sum == 0) 
			review.text += "oh zero. ";
		if (sum == 80)
			review.text += "oh you won all notes.";
		review.text = review.text+"\n\n From the dev: Thanks for playing my Ludum Dare 22 entry! SFX done in bfxr and pxtone, mp3 exporting audacity, coding: vim/mxmlc/as3, painful porting to windows/mac: flashdevelop, music in pxtone, graphics in gimp. You collected "+sum.toString()+" notes out of a possible 80! Congrats, unless it was a mediocre number. It took you a total of "+times.toString()+ " seconds to finish the sleep stages. Way to go...unless, again, that was a bad time. Play again, if you want, there are some different reviews based on how you do.";
		add(review);

	}

}
}
