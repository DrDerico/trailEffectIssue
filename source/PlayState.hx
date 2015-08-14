package;
import flixel.addons.effects.FlxTrailArea;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

/**
 * ...
 * @author ...
 */
class PlayState extends FlxState
{
	var s:FlxSprite;
	var trailArea:FlxTrailArea;

	override public function create():Void 
	{
		super.create();
		
		trailArea = new FlxTrailArea(0, 0, FlxG.width, FlxG.height);
		add(trailArea);
		
		s = new FlxSprite(200, 150);
		s.makeGraphic(32, 32);
		s.moves = false;
		s.offset.set(20, 20);
		add(s);
		
		trailArea.add(s);
		
		//trailArea.simpleRender = true;
		
		tween1(null);
	}
	
	function tween1(_) 
	{
		FlxTween.tween(s, { x: 500 }, 2, { onComplete:tween2 } );
	}
	
	function tween2(_) 
	{
		FlxTween.tween(s, { y: 400 }, 2, { onComplete:tween3 } );
	}
	
	function tween3(_) 
	{
		FlxTween.tween(s, { x: 200 }, 2, { onComplete:tween4 } );
	}
	
	function tween4(_) 
	{
		FlxTween.tween(s, { y: 150 }, 2, { onComplete:tween1 } );
	}
	
}